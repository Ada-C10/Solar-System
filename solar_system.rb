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
      list += "\n#{i + 1}. #{@planets[i]} "
    end

    return "Planets orbiting #{@star_name} #{list}"
  end

  def find_planet_by_name
  end

end
