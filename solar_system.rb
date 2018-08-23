class SolarSystem

  attr_reader :star_name, :planets
 # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
 # push planet to array
  def add_planet(planet)
    @planets << planet
  end
 # iterate through array and list planets
  def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, number|
      number += 1
      list += "#{number}. #{planet.name}\n"
    end
    return list
  end

 # check if planet exists in array
  def find_planet_by_name(user_input)
    user_input = user_input.capitalize
    @planets.each do |planet|
      if user_input == planet.name
        user_input = planet
        return user_input.summary
      end
    end
  end
end
