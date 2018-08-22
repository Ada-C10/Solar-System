# planet_spec.rb

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet Class' do
  it 'Creates an instance of the class Planet' do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    expect(earth).must_be_instance_of Planet
  end

  it 'Allows read access to all states' do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    expect(earth.name).must_equal 'Earth'
    expect(earth.color).must_equal 'blue-green'
    expect(earth.mass_kg).must_be_close_to 5.972e24
    expect(earth.distance_from_sun_km).must_be_close_to 1.496e8
    expect(earth.fun_fact).must_equal 'Only planet known to support life'
  end

  it 'Does not allows write access to any state' do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    expect {earth.name = 'Bob'}.must_raise NoMethodError
  end



  it 'Raises an argumentError if mass_kg is less than or equal to 0' do
    expect {
      Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')}.must_raise ArgumentError
  end

  it 'Raises an argumentError if mass_kg is less than or equal to 0' do
    expect {
      Planet.new('Earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life')}.must_raise ArgumentError
  end

end

describe 'Solar System Class' do
  it 'Creates an instance of the class SolarSystem' do
    solar_system = SolarSystem.new('Sol')
    expect(solar_system).must_be_instance_of SolarSystem
  end

  it 'Allows read access to star_name and planets array' do
    solar_system = SolarSystem.new('Sol')
    expect(solar_system.star_name).must_equal 'Sol'

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    expect(solar_system.planets[0].name).must_equal 'Earth'
    expect(solar_system.planets[1].name).must_equal 'Mars'
  end

  it 'Does not allows write access to any state' do
    solar_system = SolarSystem.new('Sol')

    expect {solar_system.name = 'Bob'}.must_raise NoMethodError
  end

  it 'Lists the planets in solar system class' do
    solar_system = SolarSystem.new('Sol')
    expect(solar_system.star_name).must_equal 'Sol'

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    list_of_planets = solar_system.list_planets

    expect(list_of_planets).must_equal "Planets orbiting Sol\n1.  Earth\n2.  Mars"

  end

  describe 'find_planet_by_name method' do

    before do
      @solar_system = SolarSystem.new('Sol')

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
      @solar_system.add_planet(earth)
      @solar_system.add_planet(mars)
    end

    it 'finds a planet if it exists in the solar system' do
      expect(@solar_system.find_planet_by_name('Earth')).must_be_instance_of Planet
    end

    it 'finds a planet if it exists in the solar system, regardless of case' do
      expect(@solar_system.find_planet_by_name('EARTH')).must_be_instance_of Planet
    end


    it 'Returns a message if planet is not found' do
      expect(@solar_system.find_planet_by_name('Venus')).must_equal ERROR_MSG_PLANET_NOT_FOUND
    end

    it 'If multiple planets are found with the same name, returns a message with the addresses' do
      bob = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      @solar_system.add_planet(bob)
      planet_findings = @solar_system.find_planet_by_name('Earth')
      expect(planet_findings.split("\n")[0]).must_equal ERROR_MSG_MULTIPLE_PLANETS_FOUND

    end

  end

end
