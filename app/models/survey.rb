class Survey < ApplicationRecord

    validates :title,
            presence: true

    validates :user_id,
            presence: true
            
    belongs_to :user
    
    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, allow_destroy: true
    
end
