class Survey < ApplicationRecord

    validates :title,
            presence: true

    validates :user_id,
            presence: true
            
    belongs_to :user
    has_many :questions
    
    
end
