class WaittimeController < ApplicationController
  def index
    @plan = Schedule.where(work_day: Date.today)
    @yoyakus = Yoyaku.all
    @booking = Booking.all
    @girls = Girl.all
  end

  def show
    @plan = Schedule.where(work_day: params[:work_day])
  end
end
