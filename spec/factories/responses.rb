FactoryBot.define do
  factory :random_response, class: Response do
    value { Faker::Number.within(range: 1..4) }
    association :question, :factory => :random_question
  end 
end
