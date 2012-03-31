require 'spec_helper'

describe "Beta" do
  describe "sign up without js" do
    it "fails on blank email" do
      visit new_betum_path
      click_button "sign_up"
      page.should have_content("We need an email address")
    end

    it "fails on nonsense email" do
      visit new_betum_path
      fill_in "betum_email", with: "toehuohuasoc"
      click_button "sign_up"
      page.should have_content("Email is invalid")
    end

    it "succeeds with valid email" do
      visit new_betum_path
      fill_in "betum_email", with: "t@t.com"
      click_button "sign_up"
      page.should have_content("Thanks! We will send you updates at t@t.com as we get closer to making your stories possible.")
    end
  end

  describe "signup with js", js: true do
    it "fails on blank email" do
      visit new_betum_path
      click_button "sign_up"
      page.should have_content("We need an email address")
    end

    it "fails on nonsense email" do
      visit new_betum_path
      fill_in "betum_email", with: "toehuohuasoc"
      click_button "sign_up"
      page.should have_content("Email is invalid")
    end

    it "succeeds with valid email" do
      visit new_betum_path
      fill_in "betum_email", with: "t@t.com"
      click_button "sign_up"
      page.should have_content("Thanks! We will send you updates at t@t.com as we get closer to making your stories possible.")
    end
  end
end
