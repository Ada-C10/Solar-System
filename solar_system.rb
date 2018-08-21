require 'pry'

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
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, i|
    i += 1
    list += "#{i}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(find_planet)
    find_planet = find_planet.capitalize
    @planets.each do |planet|
      # binding.pry
      if find_planet == planet.name
        find_planet = planet
        return find_planet.summary
      end
    end
    return "That's not a planet in this list!"
  end
end
