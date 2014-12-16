class HomeController < ApplicationController
  def show
    @events = Event.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events_by_date = Event.all.group_by(&:date)
  end
end
