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

    list = "Planets orbiting #{@star_name}:\n"

    @planets.each_with_index do |planet, number|
      number += 1
      list += "#{number}. #{planet.name}\n"
    end
    return list

  end

  def find_planet_by_name(planet)
    planet.capitalize
    @planets.each do |planet|
      if @planets.include?(planet)
      end
      return planet
    end

    #input: string, #output: Planet
    #goal: we match the input string to some planet in our array and return the planet if it exists
    #loop through the planets array,
    #check if the planet names match the input string,
    #and if it matches, return the planet object
  end
end
