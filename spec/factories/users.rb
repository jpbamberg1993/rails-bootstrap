FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| 'user#{n}user@example.com' }
  end
end
