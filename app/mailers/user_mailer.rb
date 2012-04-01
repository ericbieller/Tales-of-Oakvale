class UserMailer < ActionMailer::Base
  default from: "welcome@talesofoakvale.com"

  def beta_signup(user)
    recipients  "<#{user.email}>"
    from        "Tales of Oakvale"
    subject     "Thanks for signing up!"
    sent_on     Time.now
    #@email = user.email
    #mail(to: user.email, subject: "Thanks for signing up for Tales of Oakvale")
  end
end
