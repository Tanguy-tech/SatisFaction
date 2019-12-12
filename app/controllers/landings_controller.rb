class LandingsController < ApplicationController

	def create
	end 

	def show

		@landing = Landing.find_by(token: params[:token])
		@survey = Survey.find_by(id: @landing.survey_id)

	end

end
