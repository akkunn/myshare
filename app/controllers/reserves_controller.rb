class ReservesController < ApplicationController

  def index
    @reserves = Reserve.all
    # @reserves.room_id
    # binding.pry
    # @rooms = Room.where(id: @reserves.room_id) 
    # @rooms = @reserves.room
    # binding.pry
    
  end

  def new
    # binding.pry
    @reserve = Reserve.new(reserve_params)
    @room = Room.find_by(id: @reserve.room_id)
    # binding.pry
  end
  
  def create
    # binding.pry
    @reserve = Reserve.new(reserve_params)
    @reserve.save
    # binding.pry
    @room = Room.find_by(id: @reserve.room_id)
    # binding.pry
    # redirect_to reserves_confirm_path
    # redirect_to rooms_path
  end

  # def destroy
  #   @reserve = Reserve.find(params[:id])
  #   @reserve.destroy
  #   redirect_to rooms_path
  # end



  private 
    def reserve_params
      # binding.pry
      params.require(:reserve).permit(:room_id, :user_id, :sum_price, :start_day, :end_day, :number_people)
      # binding.pry
    end
end

