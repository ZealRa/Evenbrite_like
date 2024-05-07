class EventsController < ApplicationController
  def index
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_date, :duration, :description, :price, :location)
  end

end
