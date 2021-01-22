class RoomsController < ApplicationController
    before_action :set_room, only: [:show, :edit, :update, :destroy]

    def index
        if params[:guest_id]
            @rooms = Guest.find(params[:guest_id]).rooms
        else
            @rooms = Room.all
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

    def set_room
        @room = Room.find(params[:id])
    end
    

end
