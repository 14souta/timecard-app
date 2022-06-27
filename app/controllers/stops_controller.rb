class StopsController < ApplicationController

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(time_params)
    if @stop.save
      redirect_to root_path
    else
      render :new
    end


    private

    def time_params
      params.permit(:stop_time)
    end

end
