FactoryBot.define do
  factory :random_jqr, class: JoinQuestionResponse do
    association :question, :factory => :random_question
    association :response, :factory => :random_response
  end
end
 