class GuestsController < ApplicationController

    def index
    end

    def show
    end

    def new
        @guest = Guest.new
    end

    def edit
    end

    def create
        @guest = Guest.new(guest_params)
        byebug
        # if @guest.save
        #     session[:user_id] = @guest.id
        #     redirect_to @guest
        # else
        #     render :new
        # end
    end

    def update
    end

    def destroy
    end

    private

    def guest_params
        params.require(:guest).permit(:nickname, :full_name, :age, :gender, :investigator, :believer, :tech, :psychic, :bio)
    end
end