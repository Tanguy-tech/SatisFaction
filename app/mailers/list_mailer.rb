class ListMailer < ApplicationMailer

	default from: 'no-reply@monsite.fr'

    def sending_survey(list)

      mail to: list
      end

end
