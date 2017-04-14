class User < ActiveRecord::Base

   # Include default devise modules. Others available are:
   # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :orders
    has_many :comments

    after_create : welcome_mail
  def send_admin_mail
    UserMailer.welcome_message(self).deliver
  end

 end