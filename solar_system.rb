class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting #{@star_name}: #{@planets}"
  end

  def find_planet_by_name(planet)
    @planets.each do |p|
      if p.name.downcase == planet.downcase
        return p
      end
    end
  end

end
