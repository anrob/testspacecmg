class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  require 'chronic'
  
  #scope :everypage Actcode.getallbycompany(current_user).map {|m| m.actcode}
end
