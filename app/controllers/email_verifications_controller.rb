class EmailVerificationsController < ApplicationController

	def index
		@email_verifications = EmailVerification.all 
		@user = current_user
	end

	def new
		@user = current_user
	end

	def create
		@user = current_user
		@email_verification = EmailVerification.new(email_verifications_params)

		email = @email_verification.email

		url = "https://captainverify.com/api/v1/verify?email=#{email}&apikey=8dee595a757378313f904fad52f87c0d"
		response = RestClient.get(url)
    json = JSON.parse(response)

  

    if json["result" ]== "valid"
    	@email_verification.is_valid = true
    	@email_verification.save
    	redirect_to email_verifications_path
    else 
    	@email_verification.is_valid = false
    	@email_verification.save
    	redirect_to email_verifications_path
    end

	end



private

  def email_verifications_params
		params.require(:email_verification).permit(:email, :is_valid, :user_id)
	end

end