class SessionsController < ApplicationController

    def new
        @guest = Guest.new
    end

    def create
        @guest = Guest.find_by(nickname: sessions_params[:nickname])
        if @guest && @guest.authenticate(sessions_params[:password])
            sessions[:guest_id] = @guest.id
            redirect_to guest_path(@guest)
        else
            redirect_to '/login'
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
        params.require(:guest).permit(:nickname, :password, :password_confirmation)
    end

end
