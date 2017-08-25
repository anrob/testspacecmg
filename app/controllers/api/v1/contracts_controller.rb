module Api
   module V1
      class ContractsController < ActionController::Base
         
         
         def index
            #respond_with Contract.default.where(act_code: params[:act_code])
            @contract = Contract.default.where(act_code: params[:act_code])
            render json: @contract
         end
         
      end
   end
end
