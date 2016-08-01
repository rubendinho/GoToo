class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def instagram
  #   generic_callback( 'instagram' )
  # end
  def setup
    request.env['omniauth.strategy'].options['scope'] = flash[:scope] || request.env['omniauth.strategy'].options['scope']
    render :text => "Setup complete.", :status => 404
  end

  def upgrade
    scope = nil
    if params[:provider] == "google_oauth2"
      scope = "email,profile,offline,https://www.googleapis.com/auth/admin.directory.user"
    end

    redirect_to user_omniauth_authorize_path( params[:provider] ), flash: { scope: scope }
  end

  def facebook
    generic_callback( 'facebook' )
  end

  # def twitter
  #   generic_callback( 'twitter' )
  # end
  #
  # def google_oauth2
  #   generic_callback( 'google_oauth2' )
  # end

  def generic_callback( provider )
    @identity = Identity.find_for_oauth env["omniauth.auth"]

    @user = @identity.user || current_user
    @help_me_puts_debugger = env["omniauth.auth"]
    # Debugger view for log
    puts '#'*200

      puts params
      puts '#'*50
      p @identity
      p @identity.email
      puts '#'*50
      puts @user.inspect
      puts @help_me_puts_debugger.inspect
      puts '#'*50
      p @help_me_puts_debugger
      Rails.logger.info "#{@help_me_puts_debugger.inspect}"

    puts '#'*200

    if @user.nil?
      @user = User.create( email: @identity.email || "" )
      @identity.update_attribute( :user_id, @user.id )
    end

    if @user.email.blank? && @identity.email
      @user.update_attribute( :email, @identity.email)
    end

    if @user.persisted?
      @identity.update_attribute( :user_id, @user.id )
      @user.update_attribute( :first_name, @identity.first_name )
      @user.update_attribute( :last_name, @identity.last_name )
      @user.update_attribute( :email, @identity.email ) unless @identity.email.nil?
      @user.update_attribute( :username, @identity.username ) unless @identity.username.nil?
      @user.update_attribute( :uid, @identity.uid )
      @user.update_attribute( :provider, @identity.provider )

      # This is because we've created the user manually, and Devise expects a
      # FormUser class (with the validations)
      @user = FormUser.find @user.id
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :hometown, :citizenship, :gender, :dob, :provider, :uid)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :hometown, :citizenship, :gender, :dob, :provider, :uid)
  end
end
