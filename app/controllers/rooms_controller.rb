class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save
    redirect_to rooms_path
  end

  def show
    
    # @reserve = Reserve.new
  end

  private 

  def room_params
    params.require(:room).permit(:img_name, :name, :introduction, :price, :created_at, :address)
  end
end

