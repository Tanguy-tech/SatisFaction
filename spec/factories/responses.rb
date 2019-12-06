FactoryBot.define do
  factory :random_response, class: Response do
    value { Faker::Number.within(range: 1..4) }

  end 
end
