require_relative 'planet.rb'
require 'pry'
require 'minitest/autorun'
require 'minitest/reporters'

describe 'Planet' do

  it 'will return a Planet object' do
    #Arrange
    name = 'Alpha'
    color = 'green'
    mass = 5.3e23
    distance = 4.3e6
    fact = 'Alpha is a new planet'

    #Act
    test_planet = Planet.new(name, color, mass, distance, fact)

    #Assert
    expect(test_planet.class).must_equal Planet

  end

  it 'will raise an error if mass is not positive and numeric' do
    #Arrange
    name = 'Alpha'
    color = 'green'
    mass = 'apples'
    distance = 4.3e6
    fact = 'Alpha is a new planet'

    #Act-Assert
    expect{
      test_planet = Planet.new(name, color, mass, distance, fact)
    }.must_raise ArgumentError

    #Re-Arrange
    mass = -5.2e7

    #Act-Assert
    expect{
      test_planet = Planet.new(name, color, mass, distance, fact)
    }.must_raise ArgumentError
  end

  it 'will raise an error if distance is not positive and numeric' do
    #Arrange
    name = 'Alpha'
    color = 'green'
    mass = 2.7e24
    distance = 'words'
    fact = 'Alpha is a new planet'

    #Act-Assert
    expect{
      test_planet = Planet.new(name, color, mass, distance, fact)
    }.must_raise ArgumentError

    #Re-Arrange
    distance = -5.6e5

    #Act-Assert
    expect{
      test_planet = Planet.new(name, color, mass, distance, fact)
    }.must_raise ArgumentError
  end

  it 'will return a summary in the form of a string' do
    #Arrange
    name = 'Alpha'
    color = 'green'
    mass = 5.3e23
    distance = 4.3e6
    fact = 'Alpha is a new planet'

    #Act
    test_planet = Planet.new(name, color, mass, distance, fact)
    summary = test_planet.summary

    #Assert
    expect(test_planet.summary.class).must_equal String
  end


end
