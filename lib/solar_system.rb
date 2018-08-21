# solar_system.rb

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
    list_of_planets = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, index|
      list_of_planets += "\n#{index + 1}.  #{planet.name}"
    end

    return list_of_planets
  end

  def find_planet_by_name(planet_name)

    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet
      end
    end
    return "No planet called #{planet_name} found."
  end

end
