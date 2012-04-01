class UserMailer < ActionMailer::Base
  default from: "welcome@talesofoakvale.com"

  def beta_signup(user)
    @email = user.email
    mail(to: user.email, subject: "Thanks for signing up for Tales of Oakvale")
  end
end
