class SolarSystem
  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    @planets << planet
  end

  def list_planets
    formatted_string = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |planet, i|
      formatted_string += "#{i+1}. #{planet.name} \n"
    end
    return formatted_string
  end

  def find_planet_by_name (planet_name)
    all_matched_planets = @planets.select do |individual_planet|
      individual_planet.name == planet_name.capitalize
    end
    if all_matched_planets == []
      raise ArgumentError, "#{planet_name} cannot be found"
    else
      return all_matched_planets
    end
  end

  def distance_between (planet_one, planet_two)
    distance_one = find_planet_by_name(planet_one)[0].distance_from_sun_km
    distance_two = find_planet_by_name(planet_two)[0].distance_from_sun_km

    return (distance_one - distance_two).abs
  end

end
