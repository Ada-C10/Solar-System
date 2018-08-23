require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  describe 'initialize method' do
    it 'takes 5 params to create an instance of a Planet' do

      earth =  Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      earth.must_be_instance_of Planet
    end

    it "throws an argument error if mass_kg <= 0" do
      proc{ Planet.new('Earth', 'blue-green', -1, 1.496e8, 'Only planet known to support life')}.must_raise ArgumentError
    end

    it 'raises an error if distance_from_sun_km <= 0' do
        proc{ Planet.new('Earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life')}.must_raise ArgumentError
    end
  end

  describe 'summary method' do
    it 'returns a summary of the planet' do

      earth =  Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      earth.summary.must_be_kind_of String

      earth.summary.must_equal "\nEarth is a blue-green planet.\nIt weighs 5.972e+24 and is 149600000.0 km away from the sun!\nALSO, here's a really fun fact about Earth!\nOnly planet known to support life"
    end
  end
end
