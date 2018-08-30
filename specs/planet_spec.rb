require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Nominal Cases:
# initializes planet
# prints summary of all information
# methods can read all planet info

# Edge Cases: can you do assertions for these if I have input loops?
# handles bad input for mass
# handles bad input for distance

describe 'Initialize a Planet' do
  it 'initialize creates a Planet instance' do
    # Arrange & Act
    planet = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")

    # Assert
    planet.class.must_equal Planet
  end

  # Not sure if there's a way to do these tests for user input handling:
  # it 'prints an error message and prompts for new input if invalid mass' do
  # end
  #
  # it 'prints an error message and prompts for new input if invalid distance' do
  # end
end

describe 'Test summary methods' do
  it 'has a summary method that returns all planet info' do
    # Arrange
    planet = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")

    # Act
    planet_summary = planet.summary

    # Assert
    planet_summary.must_equal("EARTH: blue-green in color, weighs 5.972e+24 kg,
    located 149600000.0 km from the sun.
    Fun fact about EARTH: Only planet known to support life")
  end
end

describe 'Test reader methods' do
  it 'has methods that can read all planet info' do
    # Arrange
    planet = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")

    # Act & Assert
    planet.name.must_equal "Earth"
    planet.color.must_equal "blue-green"
    planet.mass_kg.must_equal 5.972e24
    planet.distance_from_sun_km.must_equal 1.496e8
    planet.fun_fact.must_equal "Only planet known to support life"
  end
end
