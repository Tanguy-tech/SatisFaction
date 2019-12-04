class Response < ApplicationRecord

    validates :value,
            presence: true

    has_many :join_question_responses
    has_many :questions, through: :join_question_responses

    has_many :join_response_respondents
    has_many :respondents, through: :join_response_respondents

end
