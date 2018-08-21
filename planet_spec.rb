require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet.rb'

Minitest::Reporters.use!

describe 'planet tests' do
  it 'must have positive values' do
    # ARRANGE
    @name = 'Mercury'
    @color = 'dark grey'
    @mass_kg = -4.345
    @distance_from_sun_km = -23423
    @fun_fact = 'has an earth year of about 88 days'

    # ACT & ASSERT
    expect do
      Planet.new(@name, @color, @mass_kg,
                 @distance_from_sun_km, @fun_fact)
    end.must_raise ArgumentError
  end
end