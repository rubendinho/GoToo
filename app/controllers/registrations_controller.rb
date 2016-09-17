class RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :hometown, :citizenship, :gender, :dob, :uid, :provider)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :hometown, :citizenship, :gender, :dob, :uid, :provider)
  end

  protected

  # Lets the user register w/ FB and then set their own password. Without
  # this DB hashes an empty string and wont let the user update anything
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
