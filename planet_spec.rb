gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'planet'
require 'pry'

describe "Planet Test" do

  it "mass is positive integer" do

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    
    expect(earth.mass_kg).must_be :>, 0
  end


  it "distance is positive integer" do

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    expect(earth.distance_from_sun_km).must_be :>, 0
  end
end
