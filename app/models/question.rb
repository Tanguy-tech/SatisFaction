class Question < ApplicationRecord

    belongs_to :survey
    has_many :join_question_responses
    has_many :responses, through: :join_question_responses

end
