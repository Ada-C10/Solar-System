
class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets


  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    "Planets orbiting #{@star_name}"
    planet_list = []
    @planets.each_with_index do |planet, index|
        planet_list << "#{index+1}. #{planet.name}"
    end
    return planet_list
  #  @planets.each do |planet|
  end

  def find_planet_by_name(planet_name)
    found_planet = @planets.select {|planet| planet.name.downcase == planet_name.downcase}
    return found_planet[0]
  end
end
