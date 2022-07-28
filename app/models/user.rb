class User < ApplicationRecord
  has_many :time_offs
  belongs_to :organisation
end
