class ForecastsController < ApplicationController

  def index
    render :json => Forecast.all
  end

  def show
    # This is a good example of where Rails' magic conventions can possibly
    # lead to confusion.  It's naming the URL argument "id", when it would
    # be more intuitive to name it "zip".  We should probably declare the show
    # route "manually" instead of letting our "resource" declaration do all of
    # the work.
    @forecast = Forecast.where(zip: params[:zipcode])
    render :json => @forecast
  end

end
