class Betum < ActiveRecord::Base
  #after_create :deliver_signup_notification

  def deliver_signup_notification
    UserMailer.deliver_beta_signup(self)
  end

  attr_accessible :email
  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
