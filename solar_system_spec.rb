require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/skip_dsl'
require_relative 'planet.rb'
require_relative 'solar_system.rb'

describe 'Wave 2 - solar system class' do
  it 'creates an instance of the solar system class' do
    # Arrange/Act
    solar_system = SolarSystem.new('Sol')

    # Assert
    expect(solar_system).must_be_instance_of SolarSystem
  end

  it 'will fill an array when we add planet' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    new_planet = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')

    # Act
    all_planets = solar_system.add_planet(new_planet)

    # Assert
    expect(all_planets).must_be_instance_of Array
  end

  it 'will print out a string when we list planets' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    new_planet = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
    second_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(new_planet)
    solar_system.add_planet(second_planet)

    # Act
    list_of_planets = solar_system.list_planets

    # Assert
    expect(list_of_planets).must_be_instance_of String
  end

  it 'finds a planet by name' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    new_planet = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
    second_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(new_planet)
    solar_system.add_planet(second_planet)

    # Act
    planet_info = solar_system.find_planet_by_name('eArTh')

    # Assert
    expect(planet_info[0].name).must_equal 'Earth'
  end

  it 'will calculate distance between two planets' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    new_planet = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
    second_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(new_planet)
    solar_system.add_planet(second_planet)

    # Act
    distance = solar_system.distance_between('mars', 'earth')

    # Assert
    expect(distance).must_equal 78300000
  end

  it 'will raise an error if planet cannot be found in calculating distance' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    new_planet = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'Possible subsurface lake!')
    second_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(new_planet)
    solar_system.add_planet(second_planet)

    # Act/Assert
    expect{solar_system.distance_between('mars', 'mercury')}.must_raise ArgumentError
  end

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
