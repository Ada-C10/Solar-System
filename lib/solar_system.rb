# solar_system.rb

ERROR_MSG_MULTIPLE_PLANETS_FOUND = "Error - Multiple planets with the same name found"
ERROR_MSG_PLANET_NOT_FOUND = "Error - Planet not found"

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # returns a string listing the planets
  # orbiting the instance of solar system's star_name instance variable
  def list_planets
    list_of_planets = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, index|
      list_of_planets += "\n#{index + 1}.  #{planet.name}"
    end

    return list_of_planets
  end

  # returns a result depending if name argument matches any planets in this solar system
  def find_planet_by_name(planet_name)

    # finds all planets whose planet.name match the the argument
    planets_found = @planets.select do |planet|
      if planet.name.downcase == planet_name.downcase
        planet
      end
    end

    # returns the address of the planet if 1 planet is found
    if planets_found.length == 1
      return planets_found[0]
    # returns an error message if the planet name was not found
    elsif planets_found.empty?
      return ERROR_MSG_PLANET_NOT_FOUND
    # returns an error message with a list of all all corresponding addresses in memory if
    # multiple planets with the argument planet_name were found
    else
      planet_findings = ERROR_MSG_MULTIPLE_PLANETS_FOUND

      planets_found.each_with_index do |planet, index|
        planet_findings += "\n#{index+1}.  #{planet}"
      end
      return planet_findings
    end

  end

  # returns the distance between 2 planets
  def distance_between(planet_a, planet_b)

    planet_a_distance = find_planet_by_name(planet_a).distance_from_sun_km
    planet_b_distance = find_planet_by_name(planet_b).distance_from_sun_km

    if planet_a_distance > planet_b_distance
      return planet_a_distance - planet_b_distance
    else
      return planet_b_distance - planet_a_distance
    end

  end

end
