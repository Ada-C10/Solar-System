require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet.rb'
require_relative 'solar_system.rb'

Minitest::Reporters.use!

describe 'planet data' do
  it 'must have positive values greater than 0' do
    # ARRANGE
    name = 'Mercury'
    color = 'dark grey'
    mass_kg = -4.345
    distance_from_sun_km = -23_423
    fun_fact = 'has an earth year of about 88 days'
    # ACT & ASSERT
    expect do
      mercury = Planet.new(name, color, mass_kg,
                           distance_from_sun_km, fun_fact)
    end.must_raise ArgumentError
  end

  it 'case insensitive find planet' do
    # ARRANGE
    planet_str = 'MeRcURy'
    # #ACT & ASSERT
    expect do
      test = solar_system.find_planet_by_name(planet_str)
      #puts test
      end.must_be_kind_of Planet
    # create instance of solar system
    # ARRANGE
    # sol = SolarSystem.new("Sol")
    # expect(sol.name).must_equal "Sol"
    # INSTANCE variables can be inputs to test
  end
end

# "The planet Mercury is the color dark grey and weighs 3.285e+23 kilograms. Mercury is 57910000.0 kilometers from the sun and interestingly, has an earth year of about 88 days.\n"