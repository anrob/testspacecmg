class ContractsController < ApplicationController
  before_action :create_enricher
  before_action :set_contract, only: [:show, :edit, :confirmjob, :paypeople]
  before_action :find_contract, :only => [:confirmjob, :emailjobwithnetonly, :emailjobwithallmoney, :emailjobnomoney]
  respond_to :html, :xml, :json, :xlsx
    require 'json_builder'
 
 
  def index
    #@contract = Contract.where(act_code: params[:act_code])
    #@contract = @contractstart.order(params[:sort])
    #@contracts = Contract.mystuff(current_user.actcode_name).order(params[:sort] || :date_of_event).tenday.all
    #@contracts = @contractend.order(params[:sort])
    
    @contracts = Contract.mystuff(current_user.actcode_name).tenday
    @contract_team = Contract.mystuff(current_user.actcode_name).tenday.all_except(current_user)
    @activities = PublicActivity::Activity.all
    
  #     @search = Contract.search do
  #       fulltext params[:search]git stat
  # end
   
    # @contractsss = @search.results
 
  end
  
  def show
    #@job = Job.all
    #user_id: @users.select(:id)
    @additional = Contract.additional(@contract)
    # @job = Contract.staff(@contract)
    @players = Player.teamplayer(current_user)
 
    
    feed = StreamRails.feed_manager.get_user_feed(current_user.id)
    results = feed.get()['results']
    @activities = @enricher.enrich_activities(results)

  end
  
  
  def search
    
    if params[:search]
     # @contracts = Contract.tenday
    @contract = Contract.nextfouryears.search(params[:search])#.group(:id, :type_of_act) #.order("type_of_act DESC")
    @actcode = Actcode.mainacts.where.not(actcode: @contract.pluck(:act_code)).order("description ASC").active
  # else
  #   @contracts = Contract.all.order('created_at DESC')
    end
  end
  
   def report
    @contract = Contract.funstuff
    
   end
  
  
  def create_enricher
    @enricher = StreamRails::Enrich.new
  end
  
    # def index
    # @managements = Company.all
    # end
  
  def listusers
    @users = User.all
  end
  
  def alljobs
    if current_user.try(:manager)
      @contractfour = Contract.order(contract_sort).tenday.all
    else
      redirect_to root_path
    end

  end
  
  
  def calendar
    #@search = Contract.search(params[:search])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    if current_user.try(:type) == "User"
      @contracts = Contract.mystuff(@current_user.actcode_name).threesixfive.all
      @event = @contracts.group_by(&:date_of_event)
    else
      @contracts = Contract.where(act_code: @manger.split(",")).threesixfive.all
      @event = @contracts.group_by(&:date_of_event)

    end
    respond_with @contracts
  end
  
  
  def payroll
    @contracts = Contract.mystuff(current_user.actcode_name).nextsix
    @contract_team = Contract.mystuff(current_user.actcode_name).nextsix.all_except(current_user)
    # @activities = PublicActivity::Activity.all
  end
  
  def paypeople
    respond_to do |format|
    format.html
    format.xlsx
    end
    
  end
  
 
  
  
  
  
  
 def confirmjob
    #@contract.update_attributes(confirmation: 1)
    @contract.confirmed!
    redirect_to @contract, notice: "Job Confirmed"
 end

  def emailjobwithnetonly
    ContractMailer.event_info_email_with_net_money(@user,@contract,@additional).deliver
    flash[:notice] = "Info Mailed"
    redirect_to :back
  end

  def emailjobwithallmoney
    ContractMailer.event_info_email_with_all_money(@user,@contract,@additional).deliver
    flash[:notice] = "Info Mailed"
    redirect_to :back
  end

  def emailjobnomoney
    ContractMailer.event_info_email_with_no_money(@user,@contract,@additional).deliver
    flash[:notice] = "Info Mailed"
    redirect_to :back
  end
  
  private 
  
  def find_contract
  @user = current_user
  @contract = Contract.find(params[:id])
  @additional = Contract.additional(@contract)
  end
  
  def contract_sort
  params[:sort] || :unique3
  end
  
  def set_contract
    @contract = Contract.find_by(id: params[:id])
  end
  
  def set_confirmation
    params.require(:contract).permit(:confirmation)
  end
  
  def confirmed
    Contract.confirmation == 1
  end
  
  def unconfirmed
    Contract.confirmation == 0
  end
  
  
  def contract_params
      params.require(:contract).permit(:job, player_ids:[])
  end
end


