module Api
   module V1
      class ContractsController < ActionController::Base
         
         respond_to :json
         
         
         def index
          respond_with Contract.default.where(act_code: params[:act_code]).as_json(root: true)
          # @b = ActiveSupport::JSON.decode(@h)
          #@@h
         end
         
      end
   end
end