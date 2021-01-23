class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :homepage]

    def new
        @guest = Guest.new
    end

    def create
        @guest = Guest.find_by(username: sessions_params[:username])
        if @guest && @guest.authenticate(sessions_params[:password])
            session[:guest_id] = @guest.id
            redirect_to guest_path(@guest)
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :guest_id
        redirect_to login_path
    end

    def homepage
    end

    private

    def sessions_params
        params.require(:guest).permit(:username, :password, :password_confirmation)
    end

end
