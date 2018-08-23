require_relative 'planet'

class SolarSystem

  attr_reader :star_name,:planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name} "
    i = 1
    @planets.each do |planet|
      planet_list += "\n #{i}. #{planet.name}"
      i += 1
    end
    return planet_list
  end
  
  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name.downcase == planet_string.downcase
        return planet
      else
        return "This planet doesn't exist"
      end
    end
  end

end
