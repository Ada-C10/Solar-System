
class SolarSystem
  attr_reader :star_name, :planets, :add_planet, :list_planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    str = ""
    "Planets orbiting #{@star_name}:"
    count = 0
    @planets.each do |planet|
      count += 1
      str += "#{count.to_s}. #{planet.name}\n"
    end

    return str
  end

  # added default keyword argument in case there is nothing added
  def find_planet_by_name(planet_name_str="venus")

    @planets.each do |planet|
      if planet_name_str.upcase == planet.name.upcase
        return planet
      end
    end
    return false
  end

  def distance_between(planet_name_1, planet_name_2)
    planet_1 = find_planet_by_name(planet_name_1)
    planet_2 = find_planet_by_name(planet_name_2)

    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end

end
