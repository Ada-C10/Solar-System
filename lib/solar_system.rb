require 'pry'
class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planets_list = []
    i = 0
    @planets.each do |planet|
      planets_list  << "#{i+1}: #{planet.name}"
    end
    return planets_list
  end

end
