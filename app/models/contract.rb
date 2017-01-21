class Contract < ApplicationRecord
  require 'chronic'
  #include PublicActivity::Model
   # tracked
   include StreamRails::Activity
   as_activity
   
  has_many :jobs
  has_many :players, through: :jobs
  #, through: :jobs 
   
   default_scope   { where(contract_status: ["Contract Received","Booked","Contract Sent", "Booked- PAY ACT","Complimentary","Promotional","Promo- WTA to pay","Hold- Money OTW","Contract Rec'd- Waiting for Dep.","Send Contract "])}
   
   my_date = Date.today
   #datewithouttime = Date.today.strftime("%m/%d/%y")
   datewithouttime = Date.today.strftime("%m/%d/%y")
   datetoday = Chronic.parse(datewithouttime)
   
      #event_starts = event_start_time.gsub('pm', 'PM')
      scope :mystuff, lambda { |user| where("act_code = ?", user) }
      scope :tenday, -> {where(date_of_event: (datetoday)..(Chronic.parse("10 days from now at 12:01 AM"))).order('confirmation ASC', 'act_booked ASC', 'date_of_event ASC')}
      scope :thirtyday, -> {where(date_of_event: (Chronic.parse("today"))..(Chronic.parse("30 days from now"))).order('confirmation ASC', 'act_booked ASC', 'date_of_event ASC')}
      scope :all_except, lambda { |current_user | where("user = ?", current_user ) }
      #scope :todaysevents, where(:date_of_event, my_date )
      scope :thisweek, -> {where(date_of_event: (my_date)..(my_date + 7.days))}
      scope :nextsix, -> {where(date_of_event: (Chronic.parse("5 days from now"))..(Chronic.parse("10 days from now"))).order('date_of_event ASC', 'act_booked ASC')}
      scope :threesixfive, -> {where(date_of_event:  (my_date - 2.years)..(my_date + 5.years))}
      scope :thismonth, -> {where(created_at: (Chronic.parse("first of this month"))..(Chronic.parse("end of this month"))).order('date_of_event ASC', 'act_booked ASC')}
      scope :additional, ->(addi) { where("prntkey23 = ?", addi.prntkey23)}
      # scope :staff, ->(staffi) { where("contract_id = ?", staffi.contract_id)}
      
  

      #scope :tenday, -> { where(date_of_event: Chronic.parse('next 10 days'))}
    
    def self.to_csv
     CSV.generate do |csv|
      csv << column_names
      all.each do |contract|
       csv << contract.attributes
      end
     end
     
     
    end
      
    def activity_object
    self.contract
    end
 
  def eventtime
     "#{event_start_time}-#{event_end_time}"
  end
  

  
   define_easy_dates do
    format_for :event_start_time, format: "%I:%M", :as => "updated_time"
    #format_for [:date_of_event, :created_at], format: "%m/%d/%y"c
   end
   
    def is_wedding?
    type_of_event.start_with?("Wedding", " Wedding")
    end

  def is_mitzvah?
    type_of_event.start_with?("Bar", "Bat", "B'n")
  end
   
  
end