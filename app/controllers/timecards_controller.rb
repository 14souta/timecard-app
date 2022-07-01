class TimecardsController < ApplicationController

  def index
    @start_stop = StartStop.all
  end

  def new
    @start = Start.new
  end

  def create
    @start = Start.new(time_params)
    if @start.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @start_stop = StartStop.find(params[:id])
  end

  private

  def time_params
    params.permit(:start_time)
  end

end
