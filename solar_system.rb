# keeping track of a collection of instances of Planet
class SolarSystem

  # Can read these instance variables but cannot write on them
  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    # This is an array of planet objects
    @planets = []
  end


  def add_planet(instance_of_Planet)
    @planets << instance_of_Planet
  end


  def list_planets
    list_of_planets = "Planets orbiting #{@star_name}\n"

    index = 0
    while index < @planets.length
      list_of_planets << "#{index + 1}. #{@planets[index].name}\n"
    index += 1
    end

    return list_of_planets
  end


  def find_planet_by_name(planet_name)
    # Inserting planet names into the planet_names array
    planet_names = @planets.map do |object|
      object.name.capitalize
    end

    # Checking that the planet name inputed is in the database
    if planet_names.include?(planet_name)
      @planets.each do |object|
        if object.name.capitalize == planet_name.capitalize
          return object
        end
      end
    else
      puts "The planet #{planet_name} is NOT in the database. The planets in the database are: #{planet_names}"
      return false
    end

  end
end
