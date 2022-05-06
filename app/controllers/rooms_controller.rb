class RoomsController < ApplicationController

  def index
    # binding.pry
    @rooms = Room.where(user_id: current_user.id)
    # binding.pry
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save
    # binding.pry
    redirect_to room_path(@room)
  end

  def show
    # binding.pry
    @room = Room.find(params[:id])
    @user = User.find_by(id: @room.user_id)
    # binding.pry
    @reserve = Reserve.new
    # binding.pry

  end

  def result
    @address = params[:address]
    @addresses = Room.where('address LIKE ?', "%#{@address}%" )
  end

  def search
    @keys = params[:keywords]
    @key = Room.where('name LIKE ? OR introduction LIKE ? OR address LIKE ?', "%#{@keys}%", "%#{@keys}%", "%#{@keys}%")
  end

  # def destroy
  #   @room = Room.find(params[:id])
  #   @room.destroy
  #   redirect_to rooms_path
  # end

  private 

  def room_params
    params.require(:room).permit(:img_name, :name, :introduction, :price, :created_at, :address, :user_id)
  end
end


