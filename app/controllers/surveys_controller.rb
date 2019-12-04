class SurveysController < ApplicationController

  def index

  	@surveys=Survey.all

  	# Créer une instance qui récupère juste les surveys du user connecté
  	@my_surveys = Survey.first

  end


  def new

  end 




  def create
	  	@survey = Survey.create(:title => "", :user_id => "current_user.id")

	  	  respond_to do |format|
	      format.html { redirect_to surveys_path }
	      format.js { }
	    	end

  end

  def show
  	@survey = Survey.find(params[:id])
  	#where user_id = current.user

  end

private

	def survey_params
	   params.permit(:title, :user_id)
	end

end



