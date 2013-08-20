class ApplicationController < ActionController::Base
  protect_from_forgery


  def after_sign_in_path_for(resource)
     if current_user!= nil
      stored_location_for(resource) || welcome_path
     end 
  end

  def authenticate
     if current_user == nil
      redirect_to home_path, notice: "Please login"
     end 
  end
end
