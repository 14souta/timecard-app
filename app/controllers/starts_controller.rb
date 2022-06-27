class StartsController < ApplicationController

  def new
    @start = Start.new
  end

  def create
    @start = Start.new(time_params)
    if @timecard.save
      redirect_to root_path
    else
      render :new
    end


    private

    def time_params
      params.permit(:start_time)
    end

end
