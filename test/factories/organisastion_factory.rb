# frozen_string_literal: true

require "faker"

FactoryBot.define do
  factory :organisation do
    name { "FA" }
    subdomain { "fa" }
  end
end
