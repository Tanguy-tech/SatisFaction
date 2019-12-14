class EmailVerification < ApplicationRecord

	belongs_to :user

	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	
end
