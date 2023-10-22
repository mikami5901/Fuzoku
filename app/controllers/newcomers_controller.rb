class NewcomersController < ApplicationController
  def index
  newcomer = Girl.where(start_date: (Date.today - 6.months)..Date.today)
  @newcomers = newcomer.page(params[:page]).per(20)
  end
end
