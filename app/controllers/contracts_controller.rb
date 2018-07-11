class ContractsController < ApplicationController
    layout '_minimal'
    # layout  "layouts/_navbar"

  before_action :create_enricher

  before_action :set_contract, only: [:show, :edit, :confirmjob, :paypeople]
  before_action :find_contract, :only => [:confirmjob, :emailjobwithnetonly, :emailjobwithallmoney, :emailjobnomoney]
    before_action :check_actcode
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

    @contractss = Contract.unconfirmedevent.tenday.all
   # @users = User.where(["actcode_name = ?", (@contractss.map {|m|m.act_code })])
 # @users = User.find_by "actcode_name = ?", @contractss.pluck(:act_code)
      @con = @contractss.pluck(:act_code)
     #@users = User.find_by "actcode_name = ?", @con #.pluck(@contracts.map {|m|m.act_code})
      @users = User.where(actcode_name: @con)
      # @users = User.find_all_by_actcode_name(@contracts.map {|m|m.act_code})
      #@users = User.where()

     @userss = @users.collect {|m| m.email}.uniq
    # @userss = @users.pluck(:email)


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
    @contract = Contract.nextfouryears.search(params[:search]).order("act_booked ASC")#.group(:id, :type_of_act) #.order("type_of_act DESC")
    @actcode = Actcode.mainacts.where.not(actcode: @contract.pluck(:act_code)).order("description ASC").active

  # else
  #   @contracts = Contract.all.order('created_at DESC')
    end
  end

   def report
    # @contract = Contract.funstuff
     @contract = Contract.unconfirmedevent.tenday.all
    # @contract_manager = Contract.pluck(:managements)
      @con = @contract.pluck(:act_code)
                  @user = User.where(actcode_name: @con)
                  
                  
      @contract_manager = User.pluck(:management_id) #gather managment ids
       @mang_user = User.where(management_id: @con)
      
       @collect_managers = @user.collect {|e| e.email}.uniq  # get email of acts with managers 222
      
      @userss = @user.collect {|m| m.email}.uniq
      
      
   end

   def approval
     @users = User.where("actcode_name".blank?).order("created_at ASC")
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
    #if current_user.try(:manager)
      @contractfour = Contract.order(contract_sort).tenday.all
      @con = @contractfour.pluck(:act_code)
     #@users = User.find_by "actcode_name = ?", @con #.pluck(@contracts.map {|m|m.act_code})
      @users = User.where(actcode_name: @con)
    #else
    @contractdidconfirm = Contract.order(contract_sort).tenday.didconfirmevent.all
      #@contractfour = Contract.order(contract_sort).tenday.all
    #  redirect_to root_path
  #  end
  end


  def calendar
    #@search = Contract.search(params[:search])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    unless current_user.try(:type) == "ManagerUser" || current_user.try(:type) == "Super" || current_user.try(:type) == "Netmanager"
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
   #
   @contract.didconfirm = "yes"  # this confirms the job
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

  def check_actcode
      @user = current_user
      if @user.actcode_name.blank?
        @systemmessage = " Your Account is wating for admin approval"
      else
        @systemmessage = ""
      end
  end

  def contract_sort
  params[:sort] || :date_of_event
  end

  def set_contract
    @contract = Contract.find_by(id: params[:id])
  end

  def set_confirmation
    params.require(:contract).permit(:confirmation)
  end

  def confirmed
    Contract.confirmation == 1
    #Contract.didconfirmevent
  end

  def unconfirmed
    Contract.confirmation == 0
  end


  def contract_params
      params.require(:contract).permit(:job, player_ids:[])
  end
end
