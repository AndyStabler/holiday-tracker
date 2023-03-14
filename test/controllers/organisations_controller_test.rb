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
        user: {
          name: 'Andy',
          email_address: 'me@andystabler.co.uk',
          password: 'password',
          password_confirmation: 'password',
        }
      }
    }

    assert_changes 'Organisation.count' do
      assert_changes 'User.count' do
        post organisations_url, params: organisation_params
      end
    end

    assert User.last.admin?

    assert_redirected_to organisation_url(Organisation.last)
  end

  test '#create with an invalid organisation' do
    organisation_params = {
      organisation: {
        name: nil,
      },
      user: {
        name: 'Andy',
        email_address: 'me@andystabler.co.uk',
        password: 'password',
        password_confirmation: 'password',
      }
    }

    assert_no_changes 'Organisation.count' do
      assert_no_changes 'User.count' do
        post organisations_url, params: organisation_params
      end
    end

    assert_template :new
    assert assigns(:organisation).invalid?
  end

  test '#create with an invalid user' do
    organisation_params = {
      organisation: {
        name: 'Holidat',
      },
      user: {
        password_confirmation: 'password',
      }
    }

    assert_no_changes 'Organisation.count' do
      assert_no_changes 'User.count' do
        post organisations_url, params: organisation_params
      end
    end

    assert_template :new
    assert assigns(:organisation).invalid?
    assert assigns(:user).invalid?
  end

  test '#show' do
    organisation = create(:organisation)
    get organisation_url(organisation)
    assert_template :show
  end
end
