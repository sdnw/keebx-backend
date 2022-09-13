class HelloMailer < ApplicationMailer

    default from: 'me@example.com'
    layout "mailer"
  
    def welcome_email(user)
      @user = user  
      mail(to: user[:email], subject: 'Welcome to KeebX!')
    end
  
  end
  