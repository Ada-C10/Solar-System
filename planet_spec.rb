gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'planet'


describe "Planet class tests" do
  it "Check that .name and color works on Planet" do

    neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')

    expect(neptune.name).must_equal "Neptune"

    expect(neptune.color).must_equal "blue"

    expect(neptune.mass_kg).must_equal 1050.9318

    expect(neptune.distance_from_sun_km).must_equal 4498252900

    expect(neptune.fun_fact).must_equal 'farthest known planet from the Sun in the Solar System'

    expect(neptune).must_be_instance_of Planet
    
    expect(neptune.summary).must_be_instance_of String

  end

end
