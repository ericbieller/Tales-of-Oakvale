require "spec_helper"

describe Betum do
  before(:each) { Betum.create!(:email => 'address@example.com') }
  specify {should validate_presence_of(:email)}
  specify {should validate_uniqueness_of(:email)}
  specify {should_not allow_mass_assignment_of(:id)}
  specify {should allow_mass_assignment_of(:email)}

  specify {should_not allow_value('oetuhotueh').for(:email) }
  specify {should_not allow_value('').for(:email)}
  specify {should_not allow_value('uhuhuhu@uhuhuh').for(:email)}
  specify {should_not allow_value('uhoetuh.com').for(:email)}
  specify {should allow_value('example@example.com').for(:email)}
end