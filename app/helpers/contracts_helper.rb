module ContractsHelper
   
   def themap
    "#{@contract.location_address_line_1}+#{@contract.location_city}+#{@contract.location_state}+#{@contract.location_zip}"
   end
   
   def clientname
      "#{@contract.first_name} #{@contract.last_name}"
   end
   
   def confirmed
      :confirmation == 0 
   end
   
end