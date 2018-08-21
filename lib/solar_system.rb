class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    @list = []
    @planets.each_with_index do |planet, index|
      x = "#{(index + 1)}. #{planet.name}"
      @list << x

    end
    return "Planets orbiting #{@star_name}:
    #{@list}"
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.upcase == name.upcase
        @found_planet = planet
      end
    end
    return @found_planet
  end

  attr_reader :star_name, :planets

end
