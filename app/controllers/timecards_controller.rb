class TimecardsController < ApplicationController

  def index
    @timecard = Timecard.all
  end

  def new
    @timecard = Timecard.new
  end
  
  def create
    @timecard = Timecard.new(time_params)
    if @timecard.save
       redirect_to root_path
    elsif @timecard.stop_time == nil
      render :new
    else
       redirect_to root_path
   end
  end


  private

  def time_params
    params.permit(:name, :start_time, :stop_time, :day)
  end
end
