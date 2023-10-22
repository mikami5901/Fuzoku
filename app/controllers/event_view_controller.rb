class EventViewController < ApplicationController
  def index
    @events = Event.all
    @a = Event.order(id: :desc).first

  end
end
