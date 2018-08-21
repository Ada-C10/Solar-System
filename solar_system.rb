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
      planets_list += "#{i}. #{planet.name} "
      i += 1
    end

    return  "Planets orbiting #{@star_name}:
    #{planets_list}"
  end


  def find_by_name(planet)
    @planets.each do |item|
      if item.name.downcase == planet.downcase
        return item
      end
    end
    return false
  end

  # def distance_between(planet1, planet2)
  #   @planets.each do |item|
  #     case item
  #       when item.name.downcase == planet1.downcase)
  #         dist1 = item.distance_from_sun_km
  #       when
  #         item.name.downcase == planet2.downcase
  #         dist2 = item.distance_from_sun_km
  #     end
  #   end
  #   return dist_between = dist2 - dist1
  # end
end
