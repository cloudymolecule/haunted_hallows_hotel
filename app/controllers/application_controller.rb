class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?
    before_action :authorized

    def current_user
        Guest.find_by(id: session[:guest_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def authorized
        redirect_to homepage_path unless logged_in?
    end
end
