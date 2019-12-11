class Dashboard < ApplicationRecord
  belongs_to :user
  has_many :surveys, through: :user, dependent: :destroy
  has_many :questions, through: :surveys, dependent: :destroy
  has_many :answers, through: :surveys, dependent: :destroy
end
