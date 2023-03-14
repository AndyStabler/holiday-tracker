class User < ApplicationRecord
  has_secure_password
  belongs_to :organisation

  attribute :allowance, default: 30
end
