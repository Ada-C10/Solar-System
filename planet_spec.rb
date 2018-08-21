require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet.rb'

Minitest::Reporters.use!

describe 'planet tests' do
  it 'must have positive values greater than 0' do
    # ARRANGE
    name = 'Mercury'
    color = 'dark grey'
    mass_kg = -4.345
    distance_from_sun_km = -23423
    fun_fact = 'has an earth year of about 88 days'
    # instantiate mercury
    mercury = Planet.new(name, color, mass_kg,
               distance_from_sun_km, fun_fact)
    # ACT & ASSERT
    expect do
      mercury.check_valid(mass_kg, distance_from_sun_km)
    end.must_raise ArgumentError
  end
end