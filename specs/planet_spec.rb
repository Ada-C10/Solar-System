require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet class' do
  it 'can create a planet' do
    test_planet  = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    expect(test_planet).must_be_instance_of Planet
  end

  it 'creates planets with attributes' do

    test_planet  = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    #Assert
    expect(test_planet.name).must_equal 'Earth'
    expect(test_planet.color).must_equal 'blue-green'
    expect(test_planet.mass_kg).must_equal 5.972e24
    expect(test_planet.distance_from_sun_km).must_equal 1.496e8
    expect(test_planet.fun_fact).must_equal 'Only planet known to support life'
  end

  it 'requires attributes to create a planet' do
    expect {
      Planet.new
    }.must_raise ArgumentError
    expect {
      Planet.new('Earth','Only planet known to support life')
    }.must_raise ArgumentError
  end

  it 'requires the planets mass to be greater than 0' do
    expect {
      Planet.new('Earth', 'blue-green', 'not a number!', 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
    expect {
      Planet.new('Earth', 'blue-green', -100, 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end

end

# describe '' do
#   it '' do
#
#     #Arrange
#
#     #Act
#
#     #Assert
#
# end
#
# describe '' do
#   it '' do
#
#     #Arrange
#
#     #Act
#
#     #Assert
#
# end
