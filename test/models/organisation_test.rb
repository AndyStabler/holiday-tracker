require "test_helper"

class OrganisationTest < ActiveSupport::TestCase
  test 'validates presence of name' do
    organisation = Organisation.new(name: 'Holiday')
    assert organisation.valid?

    organisation = Organisation.new(name: nil)
    assert organisation.invalid?
    assert_equal ["can't be blank"], organisation.errors[:name]
  end

  test 'subdomain generated on create' do
    organisation = Organisation.new(name: ' My Org.')
    organisation.save!
    assert_equal 'my_org', organisation.subdomain
  end

  test 'subdomain not generated on update' do
    organisation = Organisation.new(name: ' My Org.')
    organisation.save!

    organisation.update! name: 'egg'
    assert_equal 'my_org', organisation.subdomain
  end
end
