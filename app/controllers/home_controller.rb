class HomeController < ApplicationController
  def show
    @events = Event.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
