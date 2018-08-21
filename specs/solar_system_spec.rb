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

  describe 'add planet method' do
    it 'only accepts object planet as valid input' do

      solar_system = SolarSystem.new('Sol')
      expect { solar_system.add_planet('Earth') }.must_raise(ArgumentError)
      expect { solar_system.add_planet([]) }.must_raise(ArgumentError)
      expect { solar_system.add_planet('') }.must_raise(ArgumentError)
      expect { solar_system.add_planet(4) }.must_raise(ArgumentError)
    end

    it 'iterates planets array by one' do

      solar_system = SolarSystem.new('Sol')
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      len = solar_system.planets.length

    end


  end


  end
end
