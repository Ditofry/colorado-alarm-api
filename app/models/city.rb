# Primary class for identifying user location and for determining which
# forecast to watch
class City < ActiveRecord::Base
  has_many :forecasts, dependent: :destroy
  validates :name, :state, :presence => true
  geocoded_by :address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode, :if => :address_changed # Prevents unnecessary API requests.  We only ask to geocode if address changes

  # Called on create and in background tasks to query Darksky API for
  # weather data.  If query is succesfull then a new forecast child object is
  # created and attached to the City.
  def retrieve_forecast
    fc_hash = ForecastIO.forecast(self.lat, self.lon, params: { units: 'us' })
    return false unless fc_hash

    forecast_params = {}
    attr = ''
    fc_hash[:currently].each do |prop_name, value|
      attr = prop_name.underscore # DB convention == underscore, api is camelCase
      if Forecast.column_names.include? attr
        forecast_params[attr] = value
      end
    end

    return self.forecasts.create(forecast_params).valid?
  end

  # This method forces the Geocode params to be simple to normalize lat/lon fetching
  def address
    [name, state, 'USA'].compact.join(', ')
  end

  # This method validates that an address has changed during the active model lifecycle
  # so that we only query the weather data when necessary
  def address_changed
    (name_changed? || state_changed?) && address.present? # present? also tests empty string
  end
end
