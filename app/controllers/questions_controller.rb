class QuestionsController < ApplicationController

	def create
		@question = Question.create(question_params)
		@question_number = 0
	end


private 

	def question_params
	  params.permit(:content, :id)
	end
end
