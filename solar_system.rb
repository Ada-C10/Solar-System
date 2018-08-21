require_relative 'planet'

class SolarSystem
  attr_reader :planets, :star_name

  def add_planet(planet)
    @planets << planet
  end

  def list_planets

  end

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end
