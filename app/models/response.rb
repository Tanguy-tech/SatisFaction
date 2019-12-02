class Response < ApplicationRecord

    has_many :join_question_responses
    has_many :questions, through: :join_question_responses

end
