class Organisation < ApplicationRecord
  has_many :users, dependent: :destroy

  before_save :set_subdomain, if: :new_record?
  validates_presence_of :name

  private

  def set_subdomain
    self.subdomain = name.parameterize.underscore
  end
end
