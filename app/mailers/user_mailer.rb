class UserMailer < ApplicationMailer
 	default from: 'startbeautiful@heroku.com'
 
 	def contact_form(email, name, message)
 	@message = message
 	mail(:from => email,
 		:to => 'startbeautiful@gmail.com',
 		:subject => 'A new contact form message from #{name}')
 	end

 	   def welcome(user)
@user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
 end