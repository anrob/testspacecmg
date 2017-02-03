class Actcode < ApplicationRecord
   belongs_to :management
   scope :getallbycompany, lambda { |acts| where("management_id = ?", acts.management_id).includes(:management) }
   
      scope :mainacts,  -> { where(:management_id => [1,2,3,4,5,8,16,13])}

    
end
