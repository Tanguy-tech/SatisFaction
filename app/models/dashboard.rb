class Dashboard < ApplicationRecord
  belongs_to :user
  has_many :surveys, through: :user, dependent: :true
  has_many :questions, through: :surveys, dependent: :true
  has_many :answers, through: :surveys, dependent: :true
end
