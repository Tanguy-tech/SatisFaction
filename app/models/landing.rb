class Landing < ApplicationRecord

  belongs_to :survey

  validates :token, presence: true
	validates :token, uniqueness: true

	before_validation :generate_token, on: :create

	def generate_token
	  begin
	  	self.token = SecureRandom.urlsafe_base64(64, false)
	  end while self.class.find_by(token: token)
	end

	def to_param
	  token
	end

end
