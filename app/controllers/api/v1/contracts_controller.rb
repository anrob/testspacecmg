module Api
   module V1
      class ContractsController < ActionController::Base
         
         respond_to :json
         
         
         def index
          @c = Contract.thisweekplusone.default.where(act_code: params[:act_code]).limit(1)
          render json: @c.as_json(root: false)
          # @b = ActiveSupport::JSON.decode(@h)
          #@@h
         end
         
      end
   end
end