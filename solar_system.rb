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

  def find_planet_by_name

end
