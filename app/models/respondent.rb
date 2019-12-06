class Respondent < ApplicationRecord

    has_many :join_response_respondents
    has_many :responses, through: :join_response_respondents

end
