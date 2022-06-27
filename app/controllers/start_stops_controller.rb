class StartStopsController < ApplicationController

  def index
    @timecard = StartStop.all
  end
  
end
