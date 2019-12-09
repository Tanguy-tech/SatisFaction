class ContactMailer < ApplicationMailer

	default from: "no-reply@monsite.fr"
  
  def general_message(contact)
    @contact = contact
    mail( :to => "satisfactionteam@yopmail.com", :subject => "You Have a Message From Your Website")
  end


end
