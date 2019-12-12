class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end
  

  def new
    @question = Question.find(params[:format])
    @survey = @question.survey_id
    @answer = Answer.new
  end


  def create
    @answer = Answer.create(answer_params)
    @question = Question.find(@answer.question_id)
    @survey = Survey.find(@answer.survey_id)
    # @question.update(answered: true) => allow to respond only once 
    redirect_to survey_path(@survey)
  end


  private 


  def answer_params
    params.require(:answer).permit(:value, :question_id, :survey_id)
  end

end
