class City < ActiveRecord::Base
  validates :name, :state, :presence => true
  geocoded_by :address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode, :if => :address_changed # Prevents unnecessary API requests.  We only ask to geocode if address changes

  # Force the Geocode params to be simple to normalize lat/lon fetching
  def address
    [name, state, 'USA'].compact.join(', ')
  end

  def address_changed
    (name_changed? || state_changed?) && address.present?
  end
end
