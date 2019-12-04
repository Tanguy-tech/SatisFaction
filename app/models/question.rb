class Question < ApplicationRecord

    validates :number,
            presence: true

    validates :content,
            presence: true

    belongs_to :survey
    has_many :join_question_responses
    has_many :responses, through: :join_question_responses

end
