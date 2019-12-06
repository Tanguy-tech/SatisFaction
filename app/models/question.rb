class Question < ApplicationRecord

    validates :content,
            presence: true

    belongs_to :survey, optional: :true
    has_many :join_question_responses
    has_many :responses, through: :join_question_responses

end
