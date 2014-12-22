class HomeController < ApplicationController
  def show
    @events = Event.all.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events_by_date = Event.all.group_by(&:date)
  end
end
