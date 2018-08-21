# planet_spec.rb

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet Class' do
  it 'Creates a planet class' do
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

  it 'Raises an argumentError if mass_kg is less than or equal to 0' do
    expect {
      Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')}.must_raise ArgumentError
  end

  it 'Raises an argumentError if mass_kg is less than or equal to 0' do
    expect {
      Planet.new('Earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life')}.must_raise ArgumentError
  end

end
