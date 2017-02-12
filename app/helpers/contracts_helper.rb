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
   
    def managerprice
    @takeoutfee = @contract.referral_fee_amount + @contract.giveaways_charge + @contract.credit_card_fee + @contract.non_commissionable_charges
    @results = @contract.contract_price - @takeoutfee
    end
    
    def mcrate 
       if @contract.contract_price > 3000 
          @mcrate = managerprice * 0.15
          else 
          @mcrate = 300 
       end
    end
    
   
    
    
    def typeofclient
       !Contract.
         where(:prntkey23 => self.prntkey23)
         #where("id != ?", self.id).
         #where("act_code LIKE 'WA%'").
        # where("contract_status LIKE '%Contract%' OR contract_status LIKE '%Booked%'").exists?
    end
   
end