class ListsController < ApplicationController


  def index
  	@lists = List.all
  end 

  def create

  	@list = List.create!(list_params)

  	respond_to do |format|
	format.html { redirect_to lists_path, notice: 'Lists was successfully created' }

	end

	@list_array = @list.email.split(', ')
	

	ListMailer.send_survey(list_array).deliver_now

	binding.pry


  end



private

	def list_params
		params.require(:list).permit(:email)
	end

	def send_survey(list_array)

	  @list_array.each do |list|
	  ListMailer.new(list, subject: "Prends 2 minutes pour répondre à ton enquête")
	  end

    end


end
