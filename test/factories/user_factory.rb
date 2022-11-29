# frozen_string_literal: true

require "faker"

FactoryBot.define do
  factory :user do
    name { "Andy" }
    email { Faker::Internet.email }
    password { "Password" }

    trait :admin do
      admin { true }
      can_approve_time_off { true }
    end
  end
end
