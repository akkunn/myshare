class ReservesController < ApplicationController
  def new
    
    @reserve = Reserve.new(reserve_params)
    @reserve.save
    # redirect_to rooms_path
  end

  private 
  def reserve_params
    params.require(:reserve).permit(:room_id, :user_id, :sum_price, :start_day, :end_day, :number_people)
  end
end
