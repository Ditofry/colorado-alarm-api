class ForecastsController < ApplicationController

  def index
    @forecasts = Forecast.all
    render :json => @forcasts
  end

  def show
    @forecast = Forecast.where(zip: params[:zipcode])
    render :json => @forecast
  end

end
