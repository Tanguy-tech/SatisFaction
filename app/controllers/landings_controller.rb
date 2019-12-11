class LandingsController < ApplicationController



	def index
	@landings = Landing.all
	end

	def create
	end

	def new
	end

	def show
  @landing = Landing.find_by(token: params[:token]) 
	end


end
