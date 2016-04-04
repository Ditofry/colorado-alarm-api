class ForecastsController < ApplicationController

  def index
    render :json => Forecast.all
  end

  def show
    @forecast = Forecast.where(zip: params[:zipcode])
    render :json => @forecast
  end

end
