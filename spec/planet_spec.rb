require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'

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

end
