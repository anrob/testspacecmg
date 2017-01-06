class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  inherit_resources
   layout 'sidenav'
 
  protect_from_forgery with: :exception
   before_action :authenticate_user!
   before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :everypage, :except => [:new, :create]
 
   private
   
   def after_sign_out_path_for(resource_or_scope)
    root_path
   end
  
  protected
  
     def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :birthday, :update, :email, :password, :remember_me, :management_ids, :manager])
     end
     
     def everypage
    # if user_signed_in?
    # @mana = Actcode.find_by_actcode(current_user.actcode_name, :include => :management)
     # if current_user.is? :manager
     @manger = Actcode.getallbycompany(current_user).map {|m| m.actcode} 
    # end
     @contractfour = Contract.order(params[:sort]).tenday.all
     @getallbycompnay = Actcode.getallbycompany(current_user).order("actcode").delete(current_user.actcode_name)
     end

end