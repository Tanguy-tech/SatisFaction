class ListMailer < ApplicationMailer

  default from: 'no-reply@monsite.fr'

	def sending_survey(list_array)

	  list_array.each do |list|
	  mail to: list
	  end

    end


end
