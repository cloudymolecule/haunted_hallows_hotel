class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?

    def current_user
        Guest.find_by(Id: session[:guest_id])
    end

    def logged_in?
        !current_user.nil?
    end
end
