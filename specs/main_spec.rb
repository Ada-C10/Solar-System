require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/main'

require 'pry'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Main' do
  describe 'main method' do
    it 'displays a list of the planets created' do

      solar_system = SolarSystem.new('Sol')

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      solar_system.add_planet(earth)

      list = solar_system.list_planets

      list.must_be_kind_of Array
      list.first.must_equal "1: Earth"
    end
  end
end
