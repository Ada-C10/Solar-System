class SolarSystem
  attr_reader :star_name, :planet, :planets, :add_planet, :list_planets

  def initialize(star_name)
    @star_name = star_name
    @planet = planet
    @planets = []
  end

  def add_planet(planet)
    planets << planet.name
  end

  #TODO figure out formatting
  def list_planets
    str = ""
    "Planets orbiting #{star_name}:"
    count = 0
    planets.each do |planet|
      count += 1
      str += "#{count.to_s}. #{planet}\n"
    end

    return str

    # return planets


  end

end
