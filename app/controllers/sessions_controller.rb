class SessionsController < ApplicationController

    def new
        @guest = Guest.find(params[:id])
    end

    def create
    end

    def destroy
    end

    private

    def sessions_params
        params.require(:guest).permit(:nickname, :password)
    end

end
