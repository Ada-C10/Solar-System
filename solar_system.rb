# keeping track of a collection of instances of Planet
class SolarSystem

  # Can read these instance variables but cannot write on them
  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end


  def add_planet(instance_of_Planet)
    @planets << instance_of_Planet
  end


  def list_planets
    list_of_planets = ""

    index = 0
    while index < @planets.length
      list_planets << "#{index + 1}. #{@planets[index]}\n"
    index += 1
    end

    return list_of_planets
  end

end
