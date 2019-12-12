class LandingsController < ApplicationController

	def create
	end 

	def show
		puts '='*90
		puts params
		puts '='*90
		@landing = Landing.find_by(token: params[:token])
		@survey = Survey.find_by(id: @landing.survey_id)
		@questions = Question.find_by(survey_id: @survey.id)
		@answers = Answer.find_by(question_id: @questions.id)
		#@landing = Landing.find(params[:id])
		#@survey = Survey.where(id: @landing.survey_id)
		#@questions = Question.where(survey_id: @survey.ids)
		#@answers = Answer.where(question_id: @questions.ids)
		@answer = Answer.create(answer_params)
	end


	private

	def answer_params
    params.permit(:value, :question_id, :survey_id)
  end

end
