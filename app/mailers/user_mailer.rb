class UserMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    @user = user 
    #variable @url a utiliser dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    #envoi l'e-mail
    mail(to: @user.email, subject: 'Welcome to SatisFaction!') 
  end
  
end
