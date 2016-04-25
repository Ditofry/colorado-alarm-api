class ForecastsController < ApplicationController

  def index
    lat = params[:lat]
    lon = params[:lon]
    city = Geocoder.search("#{lon},#{lat}").first.city
    @forecast = City.where(name: city).first.forecasts.last
    render :json => @forecast
  end


end
