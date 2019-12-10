class QuestionsController < ApplicationController


	def index
    @questions = Question.all
  end


  def edit
    @question = Question.find(params[:id])
	end
	

	def create
		@question = Question.create(question_params)
		@question_number = 0
	end


private 

	def question_params
    params.require(:question).permit(:content, :answered, answer_attributes: [:id, :_destroy, :value])
  end

end
