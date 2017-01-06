class Actcode < ApplicationRecord
   belongs_to :management
   scope :getallbycompany, lambda { |acts| where("management_id = ?", acts.management_id).includes(:management) }
    
end
