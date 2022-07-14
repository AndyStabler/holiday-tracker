class TimeOff < ApplicationRecord
  belongs_to :user
   # TODO: Validate that a user can't book the same day off more than once
  scope :off_today, -> { where(date: Date.today) }
end
