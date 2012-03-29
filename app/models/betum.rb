class Betum < ActiveRecord::Base
  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  #
  #def as_json(options={})
  #  result = super({ only: [:id, :email, :errors]}.merge(options))
  #  result
  #end
end
