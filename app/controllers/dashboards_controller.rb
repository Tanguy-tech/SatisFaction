class DashboardsController < ApplicationController

  def new
    @dashboard = Dashboard.new
    @user = current_user
  end

  def create
  end

  def show
    @user = current_user
    @dashboard = Dashboard.find(params[:id])
    @survey = Survey.where(user_id: @dashboard.user_id)
    @questions = Question.where(survey_id: @survey.ids)

    puts '='*80
    puts params
    puts '='*80
  end

  def destroy
  end

  
end
 