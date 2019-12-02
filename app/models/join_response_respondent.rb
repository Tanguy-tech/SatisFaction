class JoinResponseRespondent < ApplicationRecord
  belongs_to :response
  belongs_to :respondent
end
