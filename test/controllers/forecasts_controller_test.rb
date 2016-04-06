require 'test_helper'

class ForecastsControllerTest < ActionController::TestCase

  describe "GET 'index'"
    test "should get index" do
      get :index
      assert_response :success
    end

    test "index should return JSON" do
      get :index
      assert_not_nil assigns(:forecasts)
    end
  end

  describe "GET 'show'" do
    before(:each) do
      @company = Factory(:forecast)
      get :show, :zipcode => @company.id
    end

    it "should be successful" do
       response.should be_success
    end

    it "should return the correct company when correct id is passed" do
      body = JSON.parse(response.body)
      body["id"].should == @company.id
    end
  end

end
