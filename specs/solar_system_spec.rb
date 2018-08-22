require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'SolarSystem' do
  describe 'initialize method' do
    it 'initializes an instance of a Solar System with 1 param' do

      solar_system = SolarSystem.new('Sol')

      solar_system.must_be_instance_of SolarSystem

    end
  end

  describe 'add_planet method' do
    it 'adds a planet to the array of planets' do
      solar_system = SolarSystem.new('Sol')

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      solar_system.add_planet(earth)

      solar_system.planets.must_be_kind_of Array

      solar_system.planets.first.name.must_equal "Earth"
    end
  end

    describe 'list_planets method' do
      it 'lists the array of planets' do
        solar_system = SolarSystem.new('Sol')

        earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

        solar_system.add_planet(earth)

        planets_list = solar_system.list_planets

        planets_list.must_be_kind_of Array

        planets_list.first.must_equal "1: Earth"
      end
    end


end
