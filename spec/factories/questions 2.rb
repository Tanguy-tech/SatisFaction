FactoryBot.define do
  factory :random_question, class: Question do
    number { Faker::Number.digit }
    content { Faker::Lorem.paragraph }
    association :survey, :factory => :random_survey
  end
end
