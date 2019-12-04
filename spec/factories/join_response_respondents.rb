FactoryBot.define do
  factory :random_jrr, class: JoinResponseRespondent do
    association :response, :factory => :random_response
    association :respondent, :factory => :random_respondent
  end
end
