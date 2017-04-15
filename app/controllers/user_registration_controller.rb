class UserRegistrationController < Devise::RegistrationsController
	
  def create
    super
    if @user.persisted?
      Usermailer.welcome(@user).deliver_now
    end
  end

end
