class TimecardsController < ApplicationController

  def index
    @timecard = Timecard.all
  end

  def new
    @timecard = Timecard.new
  end
  
  def create
    @time_card = Timecard.new(timecard_params)
    case params[:commit]
      when "出勤" ; @time_card.start_time = Time.now
      when "退勤" ; @time_card.end_time = Time.now
    end
    if @time_card.save
      redirect_to root_path
    else
      render :index
    end  
  end

  private
  def timecard_params
    params.permit(:start_time, :end_time).merge(user_id: current_user.id)
  end
end
