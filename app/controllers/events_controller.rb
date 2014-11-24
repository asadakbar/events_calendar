class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])

    if @event.save
      redirect_to root_path, notice: "Congrats, the event has been saved"
    else
      render :new, error: "Something didn't work right..."
    end
  end

end
