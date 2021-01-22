class SessionsController < ApplicationController

    def new
        @guest = Guest.new
    end

    def create
        session[:guest_id] = @guest.id
        redirect_to guest_path(@guest)
    end

    def destroy
        session.delete :guest_id
    end

    private

    def sessions_params
        params.require(:guest).permit(:nickname, :password)
    end

end
