require 'test_helper'

class CityTest < ActiveSupport::TestCase
  test "City requires name" do
    assert_not City.new(name: nil, state: 'Colorado').valid?
  end

  test "City requires state" do
    assert_not City.new(name: 'Boulder', state: nil).valid?
  end

  test "City address method will return properly contatenated string for forecast.io" do
    test_city = City.new(name: 'Boulder', state: 'Colorado')
    assert_equal test_city.address, 'Boulder, Colorado, USA'
  end
end
