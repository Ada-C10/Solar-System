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
    puts "Planets orbiting #{star_name}\n"
    name = ""
    count = 0
    @planets.each do |planet|
      name += "#{count += 1}. #{planet.name}\n"
    end
    return name
  end

  def find_planet_by_name(found_planet)
    found_planet.downcase

    @planets.each do |planet|
      if planet.name == (found_planet)
        return planet
        # else
        #   "Puts that planet is not in our Solar System"
        # end
      end

    end


  end
end
