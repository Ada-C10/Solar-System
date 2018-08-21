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
  list = @planets.each_with_index do |planet|
   "Planets orbiting #{star_name}:
          #{index + 1}. #{@planet[index]}"
        end
      return list
    end
