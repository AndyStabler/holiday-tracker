require "application_system_test_case"

class OrganisationsTest < ApplicationSystemTestCase
   test "creating an organisation" do
     visit new_organisation_url

     fill_in "Organisation name", with: "Paper Supplies Inc"
     fill_in "Your name", with: "Andy"
     fill_in "Email address", with: "me@andystabler.co.uk"
     fill_in "Password", with: "password"
     fill_in "Confirm password", with: "password"

     click_button "Sign up"

     assert_text "Organisation home page"
   end
end
