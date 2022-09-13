class KeebxEmailController < ApplicationController

    def index
    end
  
    def please_send_email
      HelloMailer.with(user: {name: 'steven', email: 'steven@example.com'}).welcome_email.deliver_later
    end
    
    def email_sent
    end
    
  end