class RegistrationsController < Devise::RegistrationsController
  # prepend_before_action :authorize_admin, only: [:sign_up, :create]
   

  prepend_before_action :require_no_authentication, only: :sign_up
  private

    # Modified Devise params for user login
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :actcode_name, :management_ids,:type )
    end

    def after_sign_up_path_for(resource)
      root_path
    end

    def authorize_admin
      return unless  current_user.try(:type) == "Super"
      #!current_user.admin?
      redirect_to root_path, alert: 'Admins only!'
    end

end
