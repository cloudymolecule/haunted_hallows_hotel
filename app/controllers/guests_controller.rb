class GuestsController < ApplicationController
    before_action :set_guest, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create]

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
        
        if @guest.save
            session[:guest_id] = @guest.id
            redirect_to @guest
        else
            render :new
        end
    end

    def update
    end

    def destroy
    end

    private

    def set_guest
        @guest = Guest.find(params[:id])
    end

    def guest_params
        params.require(:guest).permit(
            :nickname, 
            :full_name, 
            :age, :gender, 
            :investigator, 
            :believer, 
            :tech, 
            :psychic, 
            :bio, 
            :password, 
            :password_confirmation)
    end
end