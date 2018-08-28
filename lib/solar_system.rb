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
    numbered_planets_list = ""
    planets.each_with_index do |planet, index|
      numbered_planets_list += + "#{index+1}: #{planet.name}\n"
    end
    return "~~~~~~~~~~~~~~~~~~~~~~~~\nPlanets orbiting #{@star_name}\n#{numbered_planets_list}~~~~~~~~~~~~~~~~~~~~~~~~\n"
  end

  def find_planet_by_name(planet_name)
    planet_object = planets.select {|planet| planet if planet.name.capitalize == planet_name.capitalize}
    if planet_object != []
      return planet_object
    else
      return "That planet does not exist in our solar system yet."
    end
  end

  def distance_between(planet1, planet2)
    (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

end
