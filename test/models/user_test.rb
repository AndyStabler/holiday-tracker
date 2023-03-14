require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'password confirmation must be equal to password' do
    organisation = FactoryBot.create(:organisation)
    user = User.new(name: 'Andy', organisation: organisation, password: '123', password_confirmation: '321')
    user.validate
    assert_includes 'oops', user.errors
  end
end
