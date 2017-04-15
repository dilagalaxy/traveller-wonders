# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def contact_form
 	UserMailer.contact_form('startbeautiful@gmail.com', 'Dila', 'Best Message BRUH!')
 	end

 	def welcome_email
     UserMailer.welcome_email(User.first)
   end
end
