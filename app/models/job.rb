class Job < ApplicationRecord
   belongs_to :contract
   belongs_to :player
   
   
   scope :thejobs, lambda { |job| where("contract_id = ?", job) }
end


