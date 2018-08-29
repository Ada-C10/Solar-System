require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'
require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'testing the Planet class' do

  it 'mass is greater than 0' do
    # Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Act / Assert
    expect(earth.mass_kg).must_be :>, 0

  end

  it 'will raise a message to enter a number greater than 0' do
    # Arrange / Act / Assert
    expect {
      invalid_planet = Planet.new('Test', 'black', -1, 1.08e8, 'Test message')
    }.must_raise ArgumentError
  end

  it 'will raise a message to enter a number greater than 0' do
    # Arrange / Act / Assert
    expect {
      invalid_planet = Planet.new('Test', 'black', 3434, -1, 'Test message')
    }.must_raise ArgumentError
  end

  it 'will let the user know planet does not exist if not in system' do
    # Arrange
      solar_system = SolarSystem.new('Sol')
    test = solar_system.find_planet_by_name('sdf')

    # Act / Assert
    expect(test).must_equal 'sds is not in our system'

  end

end
