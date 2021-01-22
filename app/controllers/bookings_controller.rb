class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
        if @guest = Guest.find(session[:guest_id])
            @booking = Booking.new
        else
            redirect_to controller: :SessionsController, action: :homepage
        end
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def set_booking
        @booking = Booking.find(params[:id])
    end

end
