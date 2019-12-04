FactoryBot.define do
  factory :random_user, class: User do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    company { Faker::Company.name }
    password { Faker::Cannabis.cannabinoid }
    sequence(:id) { |n| "#{n}" }
  end
end
