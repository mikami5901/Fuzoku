class PlanController < ApplicationController
  def index
    @DAT_OF_WEEK = ["日", "月", "火", "水", "木", "金", "土"]
    @plan = Schedule.where(work_day: Date.today)
    @to = Date.today
    @to1 = Date.today+1
    @to2 = Date.today+2
    @to3 = Date.today+3
    @to4 = Date.today+4
    @to5 = Date.today+5
    @to6 = Date.today+6
  end

def show
   @DAT_OF_WEEK = ["日", "月", "火", "水", "木", "金", "土"]
   @plan = Schedule.where(work_day: params[:work_day])
   @to = Date.today
    @to1 = Date.today+1
    @to2 = Date.today+2
    @to3 = Date.today+3
    @to4 = Date.today+4
    @to5 = Date.today+5
    @to6 = Date.today+6
end

end
