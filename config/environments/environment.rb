 Rails.application.initialize!
 
ActionMailer::Base.smtp_settings = {
  	:address => 'smtp.sendgrid.net',
  	:port => '587',
  	:authentication => :plain,
  	:user_name => ENV['startbeautiful@heroku.com'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'travellerwonders.herokuapp.com',
    :enable_starttls_auto => true
}