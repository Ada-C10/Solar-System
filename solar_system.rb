# WAVE 2
# define class solar_system
class SolarSystem
  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end


  def add_planets(planet)
    @planets << planet
    return @planets
  end


  def list_planets
    i = 1
    planets_list = ""
    @planets.each do |planet|
      planets_list += "#{i}. #{planet.name}\n"
      i += 1
    end
    return  "Planets orbiting #{@star_name}:\n#{planets_list}"
  end

  def find_by_name(planet)
    @planets.each do |item|
      if item.name.downcase == planet.downcase
        return item
      end
    end
    return false
  end

  def distance_between(planet1, planet2)

    planet1 = find_by_name(planet1)
    distance1 = planet1.distance_from_sun_km
    planet2 = find_by_name (planet2)
    distance2 = planet2.distance_from_sun_km

    return (distance1 - distance2).abs

  end

end
