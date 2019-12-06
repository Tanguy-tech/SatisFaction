class Survey < ApplicationRecord

    validates :title,
            presence: true

    validates :user_id,
            presence: true
            
    belongs_to :user, optional: :true
    
    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, allow_destroy: :true, reject_if: proc { |att| att['content'].blank? }
    
end
