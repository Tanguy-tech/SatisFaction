class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]
  	before_action :authenticate_user!
  	
	# GET /surveys
	# GET /surveys.json
	def index
	  @surveys = Survey.all
		@user = current_user
		@dashboard = Dashboard.where(user_id: @user.id).ids
	end
  
	# GET /surveys/1
	# GET /surveys/1.json
	def show 
		@user = current_user
 
		@survey_id = @survey.id
    @questions = Question.where(survey_id: @survey_id)
    @answers = Answer.where(survey_id: @survey).ids
		@landings = Landing.where(survey_id: @survey_id).ids

	end
  
	# GET /surveys/new
	def new
	  @survey = Survey.new
	  @survey.questions.build
	  @user = current_user
	end
  
	# GET /surveys/1/edit
	def edit
	  @survey.questions.build
	  @user = current_user
	end
  
	# POST /surveys
	# POST /surveys.json
	def create
		@user = current_user
	  @survey = Survey.new(survey_params)

	  respond_to do |format|
			if @survey.save
				format.html { redirect_to @survey }
				format.json { render :show, status: :created, location: @survey }
				flash[:create] = 'Survey was successfully created.'
			else
				format.html { render :new }
				format.json { render json: @survey.errors, status: :unprocessable_entity }
			end
	  end

	  #Creation of a landing page associated to the creation of a survey
	  @landing = Landing.new
		@landing.survey_id = @survey.id
		@landing.save

		#create dashboard
		@dashboard = Dashboard.find_or_create_by(user_id: @user.id)
		#finds if a dashboard already exists for this User or create a new one 
	end
  
	# PATCH/PUT /surveys/1
	# PATCH/PUT /surveys/1.json
	def update
	  respond_to do |format|
		if @survey.update(survey_params)
		  format.html { redirect_to @survey }
		  format.json { render :show, status: :ok, location: @survey }
		  flash[:update] = 'Survey was successfully updated.'
		else
		  format.html { render :edit }
		  format.json { render json: @survey.errors, status: :unprocessable_entity }
		end
	  end
	end
  
	# DELETE /surveys/1
	# DELETE /surveys/1.json
	def destroy
	  @survey.destroy
	  respond_to do |format|
		format.html { redirect_to surveys_url }
		format.json { head :no_content }
		flash[:destroy] = 'Survey was successfully destroyed.'
	  end
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_survey
		@survey = Survey.find(params[:id])
	  end
  
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def survey_params
		params.require(:survey).permit(:title, :user_id, questions_attributes: [:id, :_destroy, :content, :answered])
	  end
  end