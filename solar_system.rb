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
    @planets.length.times do |i|
      puts "#{i + 1}. #{@planets[i]}"
    end

    return "Planets orbiting #{@star_name} #{@planets}"
  end

end
