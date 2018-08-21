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
    list = "Planets orbiting #{@star_name}: \n"
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name} \n"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    planet_name.downcase!
    @planets.each do |planet|
      if planet.name.include?(planet_name)
        return planet
      else
        raise ArgumentError, "There is no planet with that name."
      end
    end
  end

  def distance_between(planet1, planet2)

  end

end
