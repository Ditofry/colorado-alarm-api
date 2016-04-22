class ForecastsController < ApplicationController

  def index
    lat = params[:lat]
    lon = params[:lon]
    city = Geocoder.search("#{lat},#{lon}").first.city
    @forecast = City.where(name: city).first.forecasts.first
    render :json => @forecast
  end


end
