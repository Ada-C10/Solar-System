class SolarSystem

  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planets (planet)
    @planets << planet
  end

  def list_planets
    i = 1
    planet_list = []
    @planets.each do |planet|
      planet_list <<  "#{i}.  #{planet.name}"
      i = i + 1
    end
    return planet_list
  end

  def find_planet_by_name(planet_name)
    planet_name =  planet_name.downcase
    @planets.each do |planet|
      if planet_name == planet.name.downcase
        return planet
      end
    end
    return nil
  end
end
