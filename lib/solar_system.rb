class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def create_planet_string
    string = ""
    index = 0
    @planets.each_with_index do |planet, index|
      @planet_string = "#{(index + 1)}. #{planet.name}\n"
      string += @planet_string
      index +=1
    end
    return string
  end

  def invalid_planet
    raise ArgumentError.new("That planet doesn't currently exist.")
  end

  def list_planets
    @planet_string = create_planet_string
    return "Planets orbiting #{@star_name}:\n#{@planet_string}"
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
