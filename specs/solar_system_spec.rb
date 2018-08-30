require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Nominal Cases:
# initializes solar system with sun
# prints summary of all information
# methods can read all planet info

# Edge Cases: can you do assertions for these if I have input loops?
# handles bad user input for add_planet method
# handles bad user input for distance_between method
# handles bad user input for find_planet_by_name method

describe 'Initialize SolarSystem' do
  it 'initialize creates a SolarSystem instance with a star' do
    # Arrange & Act
    system1 = SolarSystem.new("Sun")

    # Assert
    system1.class.must_equal SolarSystem
    system1.star_name.must_equal "Sun"
  end
end

describe 'Test add_planet method' do
  it 'adds a planet to the instance planet array' do
    # Arrange
    system1 = SolarSystem.new("Sun")
    planet = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")

    # Act
    system1.add_planet(planet)

    # Assert
    system1.planets[0].must_equal planet
  end

  # Not sure if there's a way to do these tests for user input handling:
  # it 'prints an error message and prompts for new input if invalid mass' do
  # end
  #
  # it 'prints an error message and prompts for new input if invalid distance' do
  # end
end

describe 'Test list_planets method' do
  it 'returns all planets as a formatted string' do
    # Arrange
    system1 = SolarSystem.new("Sun")
    mercury = Planet.new("Mercury", "dark grey", 3.285e23, 57910000,
      "Closest planet to The Sun")
    venus = Planet.new("Venus", "pale yellow", 4.867e24, 108200000,
      "Named after the goddess of love")
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")
    mars = Planet.new("Mars", "red", 6.39e23, 227900000,
      "Believed to have once had water")
    jupiter = Planet.new("Jupiter", "orange-ish", 1.898e27, 778500000,
      "Largest planet in the solar system")

    # Act
    system1.add_planet(mercury)
    system1.add_planet(venus)
    system1.add_planet(earth)
    system1.add_planet(mars)
    system1.add_planet(jupiter)

    # Assert
    system1.list_planets.must_equal "Planets orbiting Sun:\n1. Mercury\n2. Venus\n3. Earth\n4. Mars\n5. Jupiter\n"
  end
end

describe 'Test find_planet_by_name method' do
  it 'returns the correct planet or planets if planet is in solar system' do
    # Arrange
    system1 = SolarSystem.new("Sun")
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8,
      "Only planet known to support life")
    mars = Planet.new("Mars", "red", 6.39e23, 227900000,
      "Believed to have once had water")
    mars2 = Planet.new("Mars", "orange-ish", 1.898e27, 778500000,
      "Largest planet in the solar system")
    system1.add_planet(earth)
    system1.add_planet(mars)
    system1.add_planet(mars2)

    # Act
    found_earth = system1.find_planet_by_name("earth")
    found_mars = system1.find_planet_by_name("MARS")

    # Assert
    found_earth[0].must_equal(earth)
    found_mars.length.must_equal(2)
    found_mars[0].must_equal(mars)
    found_mars[1].must_equal(mars2)
  end

  # Not sure if there's a way to do this test for user input handling:
  # it 'prints an error message and prompts for new input if planet not found' do
  # end
end

describe 'Test distance_between method' do
  it 'returns the absolute value of the distance between planets' do
    # Arrange
    system1 = SolarSystem.new("Sun")
    mercury = Planet.new("Mercury", "dark grey", 3.285e23, 57910000,
      "Closest planet to The Sun")
    venus = Planet.new("Venus", "pale yellow", 4.867e24, 108200000,
      "Named after the goddess of love")
    system1.add_planet(mercury)
    system1.add_planet(venus)

    # Act
    distance = system1.distance_between("mercury", "venus")

    # Assert
    distance.must_be_close_to(108200000 - 57910000)
  end

  # Not sure if there's a way to do this test for user input handling:
  # it 'prints an error message and prompts for new input if planet not found' do
  # end
end


  # it 'asks user for new input when mass or distance not a valid number > 0' do
  #     # Arrange
  #     planet1 = Planet.new("Earth", "blue-green", "bad number", 1.496e8,
  #       "Only planet known to support life")
  #
  #     # Act & Assert
  #     ??
  #
  #     # Re-arrange
  #     planet2 = Planet.new("Earth", "blue-green", 5.972e24, -234234,
  #       "Only planet known to support life")
  #
  #     # Act & Assert
  #     ??
  # end
