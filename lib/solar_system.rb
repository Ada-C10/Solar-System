class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets =[]
  end

  attr_reader :star_name, :planets

  def add_planet(new_planet)
    @planets.push(new_planet)
  end

  def list_planets
    planets_orbiting = "Planets orbitting #{@star_name}:"
    @planets.each_with_index do |planet, i|
      planets_orbiting += "\n#{i+1}. #{planet.name}"
    end
    return planets_orbiting
  end
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.downcase == planet.name.downcase
        return planet.summary
      end
    end
  end
end
