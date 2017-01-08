class ContractsController < ApplicationController
 before_action :create_enricher
  before_action :set_contract, only: [:show, :edit, :confirmjob]

  respond_to :html, :xml, :json
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
  #       fulltext params[:search]
  # end
   
    # @contractsss = @search.results
 
  end
  
  def show
    #@job = Job.all
    #user_id: @users.select(:id)
    @additional = Contract.additional(@contract)
    # @job = Contract.staff(@contract)
    
    #feed = StreamRails.feed_manager.get_user_feed(current_user.id)
   # results = feed.get()['results']
    #@activities = @enricher.enrich_activities(results)
    
   # @client = Stream::Client.new('w88ymbqhcrhc', '5f4pfgdj7h5q4wcgk7nrzzak92b6738a2dxt29b78evx9edaus9ds6vzvf2fagmj')
   # @ericFeed = @client.feed('user', 'eric')
   # activity_data = {:actor => 'eric', :verb => 'tweet', :object => 1, :tweet => 'Hello world'}
   # @activity_response = @ericFeed.add_activity(activity_data)
    
    feed = StreamRails.feed_manager.get_user_feed(current_user.id)
    results = feed.get()['results']
    @activities = @enricher.enrich_activities(results)

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
    unless current_user.try(:manager?)
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
  
  
  
  
 def confirmjob
    @contract.update_attributes(confirmation: 1)
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
      params.require(:contract).permit(:job, user_ids:[])
  end
end


