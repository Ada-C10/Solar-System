require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System Class' do
  describe 'constructor' do
    it 'returns a Solar System object' do

      expect ( SolarSystem.new('Sol') ).must_be_kind_of(SolarSystem)
    end

    it 'only accepts non-empty string as valid input for star name' do

      expect { SolarSystem.new('') }.must_raise(ArgumentError)
      expect { SolarSystem.new(4.3) }.must_raise(ArgumentError)
      expect { SolarSystem.new([]) }.must_raise(ArgumentError)
    end
  end

  describe 'add planet method' do
    it 'only accepts object planet as valid input' do

      solar_system = SolarSystem.new('Sol')
      expect { solar_system.add_planet('Earth') }.must_raise(ArgumentError)
      expect { solar_system.add_planet([]) }.must_raise(ArgumentError)
      expect { solar_system.add_planet('') }.must_raise(ArgumentError)
      expect { solar_system.add_planet(4) }.must_raise(ArgumentError)
    end

    it 'increase planets array length by one' do

      solar_system = SolarSystem.new('Sol')
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      len = solar_system.planets.length
      solar_system.add_planet(earth)

      expect( solar_system.planets.length - len ).must_equal(1)
    end

    it 'does not allow you to add same planet twice' do

      solar_system = SolarSystem.new('Sol')
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(earth)
      expect{ solar_system.add_planet(earth) }.must_raise(ArgumentError)
    end
  end

  describe 'list planets method' do
    it 'returns a string' do

      solar_system = SolarSystem.new('Sol')
      expect( solar_system.list_planets ).must_be_kind_of(String)

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(earth)
      expect( solar_system.list_planets ).must_be_kind_of(String)
    end
  end

  describe 'find_planet_by_name method' do
    it 'returns planet object' do
      
    end
  end
end
