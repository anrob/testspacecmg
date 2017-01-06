ActiveAdmin.register Management do
  #controller.authorize_resource

    # menu :if => lambda { |tabs_renderer|
    #   controller.current_ability.can?(:manage, config.resource)
    # }
 filter :name
 filter :agent
 filter :act_code
 filter :date_of_event


 index do
   column :name
  # column :contract_number
  # column :clientname
  # column :type_of_event
  # column :location_name
  # column :act_booked
  # column :contract_price
   #column :date_of_event
   

 end
 
# ActiveAdmin.register Contract do
   
#   belongs_to :
# end
 
end