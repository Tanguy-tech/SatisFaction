FactoryBot.define do
  factory :random_survey, class: Survey do
    title { Faker::Food.ingredient }
    sequence(:id) { |n| "#{n}" }
    association :user, :factory => :random_user
  end
end