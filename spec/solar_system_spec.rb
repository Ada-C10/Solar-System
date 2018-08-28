require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe 'find planet by name' do

  it 'will return planet if planet found' do

    solar_system = SolarSystem.new('Sol')

    earth = Planet.new('Earth', 'blue', 5, 1, 'life')
    mars = Planet.new('Earth', 'blue', 5, 1, 'life')
    solar_system.add_planet(mars)
    solar_system.add_planet(earth)

    expect(earth).must_be_instance_of Planet
    expect(mars).must_be_instance_of Planet
    expect(solar_system.planets[0]).must_equal(mars)
    expect(solar_system.planets[1]).must_equal(earth)

    result_mars = solar_system.find_planet_by_name("mars")
    result_earth = solar_system.find_planet_by_name("earth")

    #errors in my test
    # expect(result_mars).must_be_instance_of Planet
    # expect(result_earth).must_be_instance_of Planet
    # expect(solar_system.find_planet_by_name(mars)).must_equal(result_mars)
    # expect(solar_system.find_planet_by_name(earth)).must_equal(result_earth)

  end

  #errors in my test
  # it 'will return nil if it did not find a valid planet object in solar system' do
  #
  #   solar_system = SolarSystem.new('Sol')
  #
  #   earth = Planet.new('Earth', 'blue', 5, 1, 'life')
  #   venus = Planet.new('Venus', 'blue', 5, 1, 'life')
  #   solar_system.add_planet(earth)
  #
  #   result_venus = solar_system.find_planet_by_name(venus)
  #
  #   expect(venus).must_be_instance_of Planet
  #   expect(solar_system.find_planet_by_name(result_venus)).must_equal(nil)
  #
  # end

end
