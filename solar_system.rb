
class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

#Adds a planet to the solar system
  def add_planet(new_planet)
    @planets << new_planet
  end

#Creates a numbered list of all the planets in the solar system
  def list_planets
    planet_list = ["Planets orbiting #{@star_name}"]
    @planets.each_with_index do |planet, index|
        planet_list << "#{index+1}. #{planet.name}"
    end
    return planet_list
  end

#Finds the planet with the same name and returns the planet object
  def find_planet_by_name(planet_name)
    found_planet = @planets.select {|planet| planet.name.downcase == planet_name.downcase}
    return found_planet[0]
  end

#Calculates the distance between two planets
  def distance_between(planet1, planet2)
    distance = find_planet_by_name(planet2).distance_from_sun_km - find_planet_by_name(planet1).distance_from_sun_km
    return distance.abs
  end
end
