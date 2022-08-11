class User < ApplicationRecord
  acts_as_tenant :organisation

  has_many :time_offs
  belongs_to :organisation
end
