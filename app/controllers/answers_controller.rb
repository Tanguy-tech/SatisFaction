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
    puts '='*90
    puts params
    puts '='*90
    @answer = Answer.create(answer_params)
    @question = Question.find(@answer.question_id)
    @survey = Survey.find(@answer.survey_id)
    @landing = Landing.where(survey_id: @survey)
    # @question.update(answered: true) => allow to respond only once
    respond_to do |format|
      format.html { redirect_to landing_path(@landing.ids) }
      format.js { }
    end
  end


  private 


  def answer_params
    params.require(:answer).permit(:value, :question_id, :survey_id)
  end

end
