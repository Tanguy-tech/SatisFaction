class ContactsController < ApplicationController

	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      ContactMailer.general_message(@contact).deliver
      redirect_to new_contact_path, notice: 'Your message was successfully sent'
    
    else
      render :new
    end
  end



private

	def contact_params
		params.require(:contact).permit(:email, :message)
	end  

end
