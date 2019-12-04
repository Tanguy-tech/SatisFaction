class SurveysController < ApplicationController

  def index

  	@surveys=Survey.all
  	@user = current_user

  	# Créer une instance qui récupère juste les surveys du user connecté
  	

  end


  def new

  @survey = Survey.new
  @user = current_user

	end





  def create

			@survey = Survey.create!(survey_params)

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
	   params.require(:survey).permit(:title, :user_id)
	end

end



