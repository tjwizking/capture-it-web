class RegistrationsController < Devise::RegistrationsController
	 private
 
  def sign_up_params
    params.require(:user).permit(:BrandName, :email, :password, :password_confirmation,:logo)
  end
 
  def account_update_params
    params.require(:user).permit(:BrandName, :email, :current_password,:logo)
  end
end
