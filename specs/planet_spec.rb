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
  end
end
