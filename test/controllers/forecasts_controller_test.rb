require 'test_helper'

class ForecastsControllerTest < ActionController::TestCase
  # This is how you declare a class-specific/class-wide variable in Ruby
  @@singletonForecast = Forecast.find_or_create_by(zip: 80206)

  test "should get index" do
    get :index
    assert_response :success
  end

  test "index should return JSON" do
    get :index
    assert_not_nil assigns(:forecasts)
  end

  test "should be successful" do
    get :show, :zipcode => @@singletonForecast.zip
    assert_response :success
  end

  test "should return the correct JSON format when correct zip is passed" do
    get :show, zipcode: @@singletonForecast.zip
    body = JSON.parse(response.body)
    assert_equal body[0]['zip'], @@singletonForecast.zip
  end

end
