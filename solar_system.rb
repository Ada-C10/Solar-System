require_relative 'planet'

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
    list = ""
    @planets.length.times do |i|
      list += "\n#{i + 1}. #{@planets[i].name} "
    end

    return "Planets orbiting #{@star_name} #{list}"
  end

  def find_planet_by_name(planet_name)
    x = ""

    @planets.length.times do |i|
      if planet_name.downcase == @planets[i].name.downcase
        # matching_planet = @planets[i]
        #cant figure out how to call summary method
        #on @planets[i] - how to turn it from string to instance/object
        x = @planets[i]
        break
      else
        x = "Planet name could not be found"
      end
    end
    return x.summary
  end
end
