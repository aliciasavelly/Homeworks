class UserMailer < ApplicationMailer
  default :from 'welovecats@cats.com'

  def welcome_email(user)
    @user = user
    @url = 'http://99cats.com/login'
    mail(to: user.email, subject: 'Welcome to 99 Cats!')
  end
end
