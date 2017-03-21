class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # session checking for customer available or not
  def session_checking
    if current_admin.nil?
      redirect_to root_path if session[:customer].nil?
    end
  end

end
