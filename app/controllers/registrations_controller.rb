class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:customer).permit(
      :first_name, :last_name, :user_name, :email, :password,
      :password_confirmation
    )
  end

  def account_update_params
    params.require(:customer).permit(
      :first_name, :last_name, :user_name, :password, :email,
      :password_confirmation, :current_password
    )
  end
end
