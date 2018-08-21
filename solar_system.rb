require 'pry'
class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    string = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, i|
      string += "\n#{i + 1}. #{planet.name}"
    end
    return string
  end

  def find_planet_by_name(planet_name)
    planet_name.downcase!
    planet_name.capitalize!
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
    raise ArgumentError, "Could not find a planet named #{planet_name}."
  end

  def distance_between(planet_1, planet_2)
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end

  def planet_details
    puts "\nWhich planet would you like to know more about?"
    user_planet = gets.chomp
    planet = self.find_planet_by_name(user_planet)
    puts "\n"+planet.summary
  end

end
