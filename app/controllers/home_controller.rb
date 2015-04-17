class HomeController < ApplicationController
  def show
    events = Event.all.group_by(&:date)
    @events = Hash[events.sort_by{|k, _| k}]
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events_by_date = Event.all.group_by(&:date)
  end
end
