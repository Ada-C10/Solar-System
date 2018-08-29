require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/skip_dsl'
require_relative 'planet.rb'
require_relative 'solar_system.rb'

describe 'Wave 1 - planet class' do
  it 'creates an instance of planet class' do
    # Arrange
    name = 'Mercury'
    color = 'blue'
    mass = 2.5e20
    distance = 23.4e8
    fact = 'Closest to the sun'

    # Act
    new_planet = Planet.new(name, color, mass, distance, fact)

    # Assert
    expect(new_planet).must_be_instance_of Planet
  end

  it 'prints out a formatted summary in a string' do
    # Arrange
    name = 'Mercury'
    color = 'blue'
    mass = 2.5e20
    distance = 23.4e8
    fact = 'Closest to the sun'

    # Act
    new_planet = Planet.new(name, color, mass, distance, fact)
    summary = new_planet.summary

    # Assert
    expect(summary.class).must_equal String
  end

  it 'will raise an error if distance_from_sun_km is less than 0 or a string' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', 5.972e24, 'hello', 'Only planet known to support life')}.must_raise ArgumentError
  end

  it 'will raise an error if mass_kg is less than 0 or a string' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', -1, 5.972e24, 'Only planet known to support life')}.must_raise ArgumentError
  end
end
