class ReservesController < ApplicationController

  def index
    @reserves = Reserve.all
  end

  def new
    @reserve = Reserve.new(reserve_params)
    @room = Room.find_by(id: @reserve.room_id)
  end
  
  def create
    @reserve = Reserve.new(reserve_params)
    @room = Room.find_by(id: @reserve.room_id)
    if @reserve.save
      flash[:notice] = "予約を確定しました"
    else
      @user = User.find_by(id: current_user.id)
      flash.now[:alert] = "予約できませんでした"
      render "rooms/show"
    end

  end





  private 
    def reserve_params
      params.require(:reserve).permit(:room_id, :user_id, :sum_price, :start_day, :end_day, :number_people)
    end
end

