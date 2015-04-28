class HomeController < ApplicationController
  def show
    @dated_events = Hash[events.sort_by{|k, _| k}]
    @todays_date = Date.today
    #@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  private

  def events
    Event.all.group_by(&:date)
  end
end
