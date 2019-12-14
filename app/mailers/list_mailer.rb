class ListMailer < ApplicationMailer

	default from: 'no-reply@monsite.fr'

    def sending_survey(mail,list)
      @landing = Landing.find(list.landing_id)
      mail to: list
    end
end