# In this wave you will build a
# second class, SolarSystem,
# which is responsible for keeping track of a
# collection of instances of Planet
class SolarSystem
  attr_reader :star_name, :planets
  # attr_accessor :planets
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

  # find_planet_by_name, that takes the name of a planet
  # as a string,and returns the corresponding
  # instance of Planet
  def find_planet_by_name(p_name)
    flag = true
    planets.each do |planet|
      if planet.name.downcase == p_name.downcase
        # flag = false
        return planet.summary
      else
        flag = true
      end
    end
    if flag # re-attempt to get valid planet name
      puts "Invalid planet name entered, please enter a valid name: "
      p_name = gets.chomp
      find_planet_by_name(p_name)
    end
    end
end


