class UserMailer < ApplicationMailer
 	default from: 'startbeautiful@heroku.com'
 
 	def contact_form(email, name, message)
 	@message = message
 	mail(:from => email,
 		:to => 'startbeautiful@gmail.com',
 		:subject => 'A new contact form message from #{name}')
 	end
 end
