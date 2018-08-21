require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/skip_dsl'
require_relative 'planet.rb'
require_relative 'solar_system.rb'

describe 'Wave 1 - planet class' do
  it 'will raise an error if distance_from_sun_km is less than 0' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', 5.972e24, -1, 'Only planet known to support life')}.must_raise ArgumentError
  end

  it 'will raise an error if mass_kg is less than 0' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', -1, 5.972e24, 'Only planet known to support life')}.must_raise ArgumentError
  end
end

describe 'Wave 2 - solar system class' do
  it 'will raise an error if planet cannot be found' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    mars = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
    jupiter = Planet.new('Jupiter', 'white-red-orange-brown-yellow', 1.898e28, 7.78e8, 'it is massive - 2.5 more massive than all of the other planets in the Solary System combined')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Act
    solar_system.add_planet(mars)
    solar_system.add_planet(jupiter)
    solar_system.add_planet(earth)

    # Assert
    expect{solar_system.find_planet_by_name('water')}.must_raise ArgumentError
  end
end
