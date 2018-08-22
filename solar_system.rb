require 'pry'

class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(new_planet)
    if new_planet.class != Planet
      raise ArgumentError "Not a planet"
    else
      @planets.push(new_planet)
    end
  end

  def list_planets
    result = "Planets orbiting #{@star_name}\n"
    planet_list = @planets

    planet_list.each_with_index do |item, i|
      result << "#{i}. #{item.name}\n"
    end

    return result
  end

  def find_planet_by_name(name_of_planet)

    result = @planets.select do |planet|
      planet.name.downcase == name_of_planet.downcase
    end

    if result.length == 0
      raise ArgumentError, "no planet found with the given name"
    elsif result.length > 1
      raise ArgumentError, " more than 1 planet with the same name"
    else
      return result[0]
    end
  end

  def distance_between(planet_1_name, planet_2_name)
    planet_1 = find_planet_by_name(planet_1_name)
    planet_2 = find_planet_by_name(planet_2_name)
    distance_1 = planet_1.distance_from_sun_km
    distance_2 = planet_2.distance_from_sum_kim
    if distance_1 >= distance_2
      return distance_1 - distance_2
    else
      return distance_2 - distance_1
    end

  end

end
