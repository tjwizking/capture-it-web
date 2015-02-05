class UserMailer < ActionMailer::Base
  default from: "tjwizkid@gmail.com"

  def welcome_email(user)
  	 @user = "team@qrcamp.com"
  	@url = 'http://www.google.com'
  	mail(to:@user, subject: 'test welcome email')
  end
end
