class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_secure_password
  belongs_to :organisation

  attribute :allowance, default: 30
  validates :email_address, uniqueness: true
end
