gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'solar_system'
require_relative 'planet'

describe "Solor system tests" do
  it "Check that .star_name works on Solar System" do

    solar_system = SolarSystem.new('Sol')

    expect(solar_system.star_name).must_equal "Sol"
  end

  it "Checking add planet works" do
    solar_system = SolarSystem.new('Sol')
    neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')

    solar_system.add_planet(neptune)


    expect(solar_system.planets.length).must_equal 1
  end
  #
  it "Checking find planets" do
    solar_system = SolarSystem.new('Sol')
    neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(neptune)
    solar_system.add_planet(earth)

    expect(solar_system.find_planet_by_name("Earth")).must_equal earth.summary

  end
  #
  it "Checking distance between planets" do
    solar_system = SolarSystem.new('Sol')
    neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(neptune)
    solar_system.add_planet(earth)

    expect(solar_system.distance_between(neptune, earth)).must_equal 4348652900
  end

end
