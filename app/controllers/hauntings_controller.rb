class HauntingsController < ApplicationController
    before_action :set_haunting, only: [:show, :edit, :update, :destroy]

    def index
        if params[:guest_id]
            @hauntings = Guest.find(params[:guest_id]).hauntings
        else
            @hauntings = Haunting.all
        end
    end

    def show
    end

    def new
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

    def set_haunting
        @haunting = Haunting.find(params[:id])
    end
    
end
