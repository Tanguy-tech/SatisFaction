# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['USERNAME_APIKEY'],
  :password => ENV['PASSWORD_APIKEY'],
  :domain => 'monsite.fr',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}