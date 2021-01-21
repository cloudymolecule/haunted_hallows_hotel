class RoomsController < ApplicationController
    before_action :set_room, only: [:show, :edit, :update, :destroy]

    def index
        @rooms = Room.all
    end

    def show
        @room = Room.find
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
