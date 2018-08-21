class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []

  def add_planet(Planet)

  end

  def list_planets
    return "Planets orbiting #{@star_name}"
  end

end
