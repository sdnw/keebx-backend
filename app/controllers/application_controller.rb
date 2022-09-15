class ApplicationController < ActionController::Base
    include ActionController::Cookies

  before_action :authorize
  skip_before_action :verify_authenticity_token

  private 
  
  def authorize
    # debugger
    return render json: { error: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
  end
end
