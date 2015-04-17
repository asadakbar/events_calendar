class EventsController < ApplicationController

  def new; @event = Event.new; end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event), notice: "Congrats, the event has been saved"
    else
      render :edit
    end
  end

  def show; @event = Event.find(params[:id]); end

  private

  def event_params; params.require(:event).permit!; end

end
