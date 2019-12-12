class LandingsController < ApplicationController

	def create
	end 

	def show
		puts '='*90
		puts params
		puts '='*90
		@landing = Landing.find(params[:id])
		@survey = Survey.where(id: @landing.survey_id)
		@questions = Question.where(survey_id: @survey.ids)
		@answers = Answer.where(question_id: @questions.ids)
		@answer = Answer.create(answer_params)
	end


	private

	def answer_params
    params.permit(:value, :question_id, :survey_id)
  end

end
