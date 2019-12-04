class Survey < ApplicationRecord

    validates :title,
            presence: true

    validates :user_id,
            presence: true
            
    belongs_to :user
<<<<<<< HEAD
    
    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, allow_destroy: true
=======
    has_many :questions
    
>>>>>>> 1bec3ec875e519511a76ac8db58e9aba1f1065d5
    
end
