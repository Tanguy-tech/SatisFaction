class LandingsController < ApplicationController

	def create
	end 

	def show
		@landing = Landing.find(params[:id])
		@survey = Survey.find(params[:id])
	end

end
