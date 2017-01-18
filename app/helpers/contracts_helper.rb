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
    takeoutfee = "@contract.referral_fee_amount + @contract.giveaways_charge} + @contract.credit_card_fee} + @contract.non_commissionable_charges"
    contractprice = @contract.contract_price
    results = contractprice - takeoutfee
    results
    end
   
end