class ListsController < ApplicationController


  def create

  	@list = List.create!(list_params)

  	respond_to do |format|
	format.html { redirect_to surveys_path, notice: 'Your survey was successfully sent' }

	end

	@list_array = @list.email.split(', ')
	
	ListMailer.sending_survey(@list_array).deliver_now

  end



private

	def list_params
		params.require(:list).permit(:email)
	end

end
