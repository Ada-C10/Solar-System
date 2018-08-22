require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system'

require 'pry'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'SolarSystem' do
  describe 'initialize method' do
    it 'initializes an instance of a Solar System with 1 param' do

    end
  end

  describe 'add_planet method' do
    it 'adds a planet to the array of planets' do
    end
  end

  describe ' list_planets method' do
    'it lists the array of planets' do
    end
  end

end
