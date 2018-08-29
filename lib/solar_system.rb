
class SolarSystem
  attr_reader :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # add a planet to list of planets
  def add_planet(planet)
    @planets << planet
  end

  # show all planet names
  def list_planets
    str = ""
    "Planets orbiting #{@star_name}:"
    count = 0
    @planets.each do |planet|
      count += 1
      str += "#{count.to_s}. #{planet.name}\n"
    end

    # return planet number and name as string
    return str
  end

  # added default keyword argument in case there aren't any parameters
  def find_planet_by_name(planet_name_str="venus")
    # input --> planet names (str)

    @planets.each do |planet|
      if planet_name_str.upcase == planet.name.upcase
        # return planet as an object if planet name input/arg matches a planet name in the list
        return planet
      end
    end
    # return false if planet not found
    return false
  end

  # find distance between two given planets
  def distance_between(planet_name_1, planet_name_2)
    # input --> planet names (str)
    # verify arg planets are valid + store as vars
    planet_1 = find_planet_by_name(planet_name_1)
    planet_2 = find_planet_by_name(planet_name_2)

    # return distance between two given planets
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end

end
