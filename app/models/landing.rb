class Landing < ApplicationRecord

  belongs_to :survey
  has_many :lists, dependent: :destroy

end
