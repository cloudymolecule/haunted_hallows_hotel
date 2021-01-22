class HauntingsController < ApplicationController

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
    
end
