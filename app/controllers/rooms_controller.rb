class RoomsController < ApplicationController

  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def new
    @room = Room.new
  end


  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room, button: "1")
      flash[:notice] = "ルームを登録しました"
    else
      flash.now[:alert] = "ルームを登録できませんでした"
      render "rooms/new"
    end
  end

  def show
    if params[:button].to_i == 1
      @room = Room.find(params[:id])
      @user = User.find_by(id: @room.user_id)
      @reserve = Reserve.new
    else
      @reserve = Reserve.find(params[:id])
      @room = Room.find_by(id: @reserve.room_id)
      @user = User.find_by(id: @room.user_id)
      @reserve = Reserve.new
    end

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



