require "spec_helper"

describe Betum do
  before(:each) { Betum.create!(:email => 'address@example.com') }
  it {should validate_presence_of(:email)}
  it {should validate_uniqueness_of(:email)}
  it {should_not allow_mass_assignment_of(:id)}
  it {should allow_mass_assignment_of(:email)}

  it {should_not allow_value('oetuhotueh').for(:email) }
  it {should_not allow_value('').for(:email)}
  it {should_not allow_value('uhuhuhu@uhuhuh').for(:email)}
  it {should_not allow_value('uhoetuh.com').for(:email)}
  it {should allow_value('example@example.com').for(:email)}
end