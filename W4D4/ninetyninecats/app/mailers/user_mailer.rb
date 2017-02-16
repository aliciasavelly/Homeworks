class UserMailer < ApplicationMailer
  default from: 'welovecats@cats.com'

  def welcome_email(user)
    @user = user
    @url = 'http://99cats.com/login'
    mail(to: 'everybody@appacademy.io', subject: 'Welcome to 99 Cats!')
  end
end
