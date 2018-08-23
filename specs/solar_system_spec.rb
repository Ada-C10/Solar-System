require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System' do
  it 'can create a Solar System object' do
    expect(SolarSystem.new('Sol')).must_be_instance_of SolarSystem
  end

  it 'initializes with an empty array and a star name' do
    expect(SolarSystem.new('Sol').planets).must_be_empty
    expect(SolarSystem.new('Sol').star_name).must_equal 'Sol'
  end

  it 'can add a planet object to solar system' do
    solar_system = SolarSystem.new('Sol')
    zeb = Planet.new('Zebulon', 'rainbow', 2.972e24, 19.496e8, 'Where the unicorns play')
    swil = Planet.new('Swilly', 'orange-tabby', 1.972e24, 30.496e8, 'Where Chelsey keeps her many space cats')

    solar_system.add_planet(zeb)
    solar_system.add_planet(swil)

    expect(solar_system.planets[0]).must_be_instance_of Planet
    expect(solar_system.planets.count).must_equal 2
  end

  it 'can return a list of planets' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    zeb = Planet.new('Zebulon', 'rainbow', 2.972e24, 19.496e8, 'Where the unicorns play')
    swil = Planet.new('Swilly', 'orange-tabby', 1.972e24, 30.496e8, 'Where Chelsey keeps her many space cats')
    solar_system.add_planet(earth)
    solar_system.add_planet(zeb)
    solar_system.add_planet(swil)

    expect(solar_system.list_planets).must_be_instance_of String

    expect {
       solar_system.list_planets
    }.must_be_silent

  end

  it 'can locate a planet object from string input' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(earth)

    expect(solar_system.find_planet_by_name("EaRTH")[0]).must_be_instance_of Planet
    expect(solar_system.find_planet_by_name("EaRTH")[0].name).must_equal "Earth"
  end

#     #Arrange
#
#     #Act
#
#     #Assert
#
  end
