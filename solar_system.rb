# In this wave you will build a
# second class, SolarSystem,
# which is responsible for keeping track of a
# collection of instances of Planet
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
    info = "Planets orbiting #{star_name}:"
    planets.each_with_index do |el,i|
      info << "\n#{i+1}.  #{el.name}"
    end
    return info
  end

  #find_planet_by_name, that takes the name of a planet
  # as a string,and returns the corresponding
  # instance of Planet
  def find_planet_by_name(p_name)
    planets.each do |planet|
      if planet.name == p_name.capitalize
        return planet.summary
      end
    end
  end

  
end