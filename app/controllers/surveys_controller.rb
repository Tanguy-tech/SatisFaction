class SurveysController < ApplicationController

  def index

  	@surveys = Survey.all
	@user = current_user
	  
  end


  def new

  @survey = Survey.new
  @user = current_user

  5.times { @survey.questions.build }
  end


  def create

	@survey = Survey.create!(survey_params)

	respond_to do |format|
	format.html { redirect_to surveys_path, notice: 'Survey was successfully created' }
	format.json{ render :show, status: :created, location: @survey }
	end 

  end

  def show
  	@survey = Survey.find(params[:id])
  	#where user_id = current.user

  end

private

	def survey_params
	   params.require(:survey).permit(:title, :user_id, question_attributes:[:id, :number, :content, :_destroy])
	end

end



