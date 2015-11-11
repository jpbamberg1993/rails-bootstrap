require 'faker'

FactoryGirl.define do
  factory :user do
    # sequence(:email) { |n| 'user#{n}user@example.com' }
    email { Faker::Internet.email }
  end
end
