# frozen_string_literal: true

require "faker"

FactoryBot.define do
  factory :user do
    name { "Andy" }
    email_address { Faker::Internet.email }
    password { "Password" }
    organisation

    trait :admin do
      admin { true }
      can_approve_time_off { true }
    end
  end
end
