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
    string = ""
    planets.each_with_index do |planet, index|
      string = string + "#{index+1}: #{planet.name}\n"
    end
    return "Planets orbiting #{@star_name}\n#{string}"
  end

  def find_planet_by_name(planet_name)
    planet_object = planets.collect {|planet| planet_object = planet if planet.name.capitalize == planet_name.capitalize}
    if planet_object != []
      return planet_object
    else
      raise ArgumentError.new("That planet is not in this solar system")
    end
  end

end
