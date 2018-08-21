require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/skip_dsl'
require_relative 'planet.rb'

describe 'Planet class' do
  it 'will raise an error if distance_from_sun_km is less than 0' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', 5.972e24, -1, 'Only planet known to support life')}.must_raise ArgumentError
  end

  it 'will raise an error if mass_kg is less than 0' do
    # Assert
    expect{Planet.new('Earth', 'blue-green', -1, 5.972e24, 'Only planet known to support life')}.must_raise ArgumentError
  end
end
