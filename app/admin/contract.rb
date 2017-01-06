ActiveAdmin.register Contract do
   
      scope :all
    scope :thirtyday
   scope :thismonth
  #controller.authorize_resource

    # menu :if => lambda { |tabs_renderer|
    #   controller.current_ability.can?(:manage, config.resource)
    # }
 filter :act_booked
 filter :agent
 filter :act_code
 filter :confirmation_date
 filter :management
 filter :last_name
 filter :date_of_event
 filter :management,
   collection: -> { Management.all },
   label:      'Management'
   
 #filter :management, :as => :string

 index do
   column :date_of_event
  # column :contract_number
  # column :clientname
   column :type_of_event
   column :location_name
   column :act_booked
   column :contract_price
   column :last_name
   column :created_at
   column :confirmation_date

 end
end