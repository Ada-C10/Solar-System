class SolarSystem

  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name == name.capitalize
        return planet
      end
    end
    return raise ArgumentError, 'Planet not in star system'
  end

end
