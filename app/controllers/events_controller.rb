class EventsController < ApplicationController
  def index
    @events = Event.where(city: current_user.city)
  end
end
