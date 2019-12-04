FactoryBot.define do
  factory :random_respondent, class: Respondent do
    sequence(:id) { |n| "#{n}" }
  end
end
