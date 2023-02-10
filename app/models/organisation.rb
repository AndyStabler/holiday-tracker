class Organisation < ApplicationRecord
  has_many :users, dependent: :destroy

  accepts_nested_attributes_for :users

  before_save :set_subdomain

  private

  def set_subdomain
    # TODO: Set subdomain
  end
end
