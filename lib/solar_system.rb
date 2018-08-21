class SolarSystem

  attr_reader :star_name, :planets


  def initialize(star_name)

    unless star_name.instance_of?(String) && !star_name.empty?
      raise ArgumentError, 'Star Name must be valid string'
    end

    @star_name = star_name
    @planets = []

  end

  def add_planet(planet)

    unless planet.instance_of?(Planet)
      raise ArgumentError, 'Planet must be instance of Planet class'
    end

    @planets << planet
  end

  def list_planets
    str = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, i|
      str += "\n #{i+1}: #{planet.name}"
    end

    return str
  end

  def find_planet_by_name(planet_name)
    return @planets.find {|planet| planet.name == planet_name}
  end

  def distance_between(name1, name2)

    planet1 = find_planet_by_name(name1)
    planet2 = find_planet_by_name(name2)

    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

end
