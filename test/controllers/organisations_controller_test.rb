require "test_helper"

class OrganisationsControllerTest < ActionDispatch::IntegrationTest
  test '#new' do
    get new_organisation_url

    assert_not_nil assigns(:organisation)
    assert_not_nil assigns(:user)

    assert_template :new
  end

  test '#create' do
    organisation_params = {
      organisation: {
        name: 'Paper Inc',
        users_attributes: {
          "0"=>{
            name: 'Andy',
            email_address: 'me@andystabler.co.uk',
            password: 'password',
            password_confirmation: 'password',
          }
        }
      }
    }

    assert_changes 'Organisation.count' do
      post organisations_url, params: organisation_params
    end
  end
end
