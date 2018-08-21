class SolarSystem
  attr_reader :star_name, :planets # read only

  # Each SolarSystem instance has a star and an array of Planets that orbit it.
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Adds a Planet to this SolarSystem's planets array.
  def add_planet(planet)
    @planets << planet
  end

  # Returns a string listing all the Planets in this SolarSystem.
  def list_planets
    planet_list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, i|
      planet_list << "#{i+1}. #{planet.name}\n"
    end
    return planet_list
  end

  # Looks up a planet by name (case insensitive) and returns Planet's instance.
  # If planet does not exist in this SolarSystem, raises ArgumentError.
  def find_planet_by_name(planet_name)
    found_planets = @planets.find_all do |planet|
      planet.name.casecmp? planet_name
    end
    if !found_planets.empty?
      return found_planets
    else
      raise ArgumentError,
      "ERROR: #{planet_name} not found in this solar system."
    end
  end

  # Takes two Planet names as parameters and returns the distance between them
  def distance_between(planet1name, planet2name)
    planet1 = find_planet_by_name(planet1name)
    planet2 = find_planet_by_name(planet2name)
    return (planet1[0].distance_from_sun_km -
        planet2[0].distance_from_sun_km).abs
  end
end
