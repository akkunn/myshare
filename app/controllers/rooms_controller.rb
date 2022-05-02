class RoomsController < ApplicationController
  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save
    # binding.pry
    redirect_to rooms_path
  end

  def show
    @room = Room.find(params[:id])
    # @reserve = Reserve.new
    @user = User.find_by(id: @room.user_id)
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

  private 

  def room_params
    params.require(:room).permit(:img_name, :name, :introduction, :price, :created_at, :address, :user_id)
  end
end



