class City < ActiveRecord::Base
  has_many :forecasts, dependent: :destroy
  validates :name, :state, :presence => true
  geocoded_by :address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode, :if => :address_changed # Prevents unnecessary API requests.  We only ask to geocode if address changes

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

  # Force the Geocode params to be simple to normalize lat/lon fetching
  def address
    [name, state, 'USA'].compact.join(', ')
  end

  def address_changed
    (name_changed? || state_changed?) && address.present?
  end
end
