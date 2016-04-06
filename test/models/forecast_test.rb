require 'test_helper'

class ForecastTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "ensure database does not except nill zipcode" do
    zip = Forecast.new
    assert_not zip.valid?, "oops, database counts the data as valid."
    #ensure the save fails.
    assert_not zip.save, "oops, it looks like a nil zipcode was able to be saved."
  end
  
  test "ensure minimum zipcode length" do
    100.times do |x|
      assert_not Forecast.new(zip:x**2).valid?, "#{x} seems to fail the minimum length requirement, it's too short."
    end
  end
  
  test "zipcodes that are valid work." do
    1000.times do |x|
      b = rand(90000)+10000
      assert Forecast.create(zip: b).save, "#{b} is not valid zipcode."
    end
  end
  
  test "zipcodes that are too large" do
    1000.times do |x|
      b = (100000+x)**2
      assert_not Forecast.new(zip:b).valid?, "saved zipcode that was too large."
    end
  end
  
  test "no nil values exist in database" do
    1000.times {|x| Forecast.create(zip: x+10000)}
    assert Forecast.all.length >5
    Forecast.all do |x|
      assert_not_nil x.zip
    end
  end

  test "database rejects invalid laditude and longitude ranges" do
    assert_not Forecast.new({:zip => 80123, :lat => -153}).valid?
    assert_not Forecast.new({:zip => 80123, :lat => 153}).valid?
  end
  
  test "database rejects invalid longitude values" do
    assert_not Forecast.new({:zip => 80331, :lng => -283}).valid?
    assert_not Forecast.new({:zip => 80331, :lng => 283}).valid?
  end
  
  test "valid laditudes get accepted" do
    assert Forecast.new({:zip => 55555, :lat => 0, :lng => 0}).valid?
    assert Forecast.new({:zip => 55555, :lat => -90}).valid?
    assert Forecast.new({:zip => 55555, :lat => 90}).valid?
    assert Forecast.new({:zip => 55555, :lng => -180}).valid?
    assert Forecast.new({:zip => 55555, :lng => 180}).valid?
  end

  
end
