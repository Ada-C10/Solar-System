#Solar System Class

  #require_relative 'main.rb'

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

    planet_names =  @planets.map.with_index do |planet, i| "#{i + 1}" + "." + " " + planet.name + "\n"
end
    return planet_names.join(" ")
  end

  def find_planet_by_name(planet_name)
    found_planet = nil
    @planets.each do |planet|
    if planet.name.casecmp(planet_name) == 0
        found_planet = planet
      end
    end
    return found_planet
  end

end



class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def planet_summary
    return "#{@name}: #{@color}: #{@mass_kg}: #{@distance_from_sun_km}: #{@fun_fact}"
  end

end

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

    planet_names =  @planets.map.with_index do |planet, i| "#{i + 1}" + "." + " " + planet.name + "\n"
end
    return planet_names.join(" ")
  end

  def find_planet_by_name(planet_name)
    found_planet = nil
    @planets.each do |planet|
    if planet.name.casecmp(planet_name) == 0
        found_planet = planet
      end
    end
    return found_planet
  end

end
