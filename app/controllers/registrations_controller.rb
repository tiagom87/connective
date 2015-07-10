class RegistrationsController < Devise::RegistrationsController
  private
 
  def sign_up_params
    params.require(:user).permit(:name, :email, :password)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :email, :password, :current_password, :mini_bio, :country, :latest_position, :university, :experience)
  end
end