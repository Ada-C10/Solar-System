require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet Class' do
  describe 'constructor' do
    it 'returns a Planet object' do

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      expect( earth ).must_be_kind_of(Planet)
    end

    it 'requires positive numbers for mass and distance from sun' do

      expect {
        Planet.new('Earth', 'blue-green', -2, 1.496e8, 'Only planet known to support life')
      }.must_raise(ArgumentError)

      expect{
        Planet.new('Earth', 'blue-green', 5.972e24, -1.496e8, 'Only planet known to support life')
      }.must_raise(ArgumentError)

      expect{
        Planet.new('Earth', 'blue-green', 'asd', -1.496e8, 'Only planet known to support life')
       }.must_raise(ArgumentError)
    end

    it 'summary method returns string' do

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      expect ( earth.summary ).must_be_kind_of(String)
    end
  end
end
