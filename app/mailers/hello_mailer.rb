class HelloMailer < ApplicationMailer

    default from: 'welcome@keebx.com'
    layout "mailer"
  
    def welcome_email(user)
      @user = user  
      mail(to: user[:email], subject: 'Welcome to KeebX!')
    end
  
  end
  