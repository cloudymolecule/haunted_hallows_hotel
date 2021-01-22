class SessionsController < ApplicationController

    def new
        @guest = Guest.new
    end

    def create
        # session[:guest_id] = @guest.id
        # redirect_to guest_path(@guest)
    end

    def destroy
        session.delete :guest_id
        redirect_to login_path
    end

    def homepage
    end

    private

    def sessions_params
        params.require(:guest).permit(:nickname, :password, :password_confirmation)
    end

end
