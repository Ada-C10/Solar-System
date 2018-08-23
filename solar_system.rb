class SolarSystem

  attr_reader :star_name, :planets


  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    @planets << planet
  end

  def list_planets
    list = "\nPlanets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name == name.capitalize
        return planet
      end
    end
    return raise ArgumentError, 'Planet not in star system'
  end

  def get_planet_distance(name)
    @planets.each do |planet|
      if planet.name == name.capitalize
        return planet.distance
      end
    end
    return raise ArgumentError, 'Planet not in star system'
  end

  def find_distance_between
    planet1 = get_planet_name
    planet2 = get_planet_name
    distance = planet1.distance_from_sun_km - planet2.distance_from_sun_km
    parsec = distance * 3.24078e-14
    puts "\nDistance between #{planet1.name} & #{planet2.name}: #{distance.abs} km/#{parsec.abs} parsecs"
  end

  def calculate_travel_time
    planet1 = get_planet_name
    planet2 = get_planet_name
    distance = planet1.distance_from_sun_km - planet2.distance_from_sun_km
    travel_time = distance.abs / (1.079e+9 * 200) # speed of light in km/h * 200, a slightly slower than the speed of the intergalactically-reknown Millennium Falcon in hyperdrive
    puts "\nApproximate travel time (#{planet1.name}-#{planet2.name}) in hyperdrive: #{travel_time} hours"
  end

  def get_planet_name
    print "\nEnter planet name: "
    planet = gets.chomp.to_s
    return find_planet_by_name(planet)
  end

  def add_a_planet
    print "\nEnter new planet name: "
    planet_name = gets.chomp.to_s
    print "\nDescription of #{planet_name}'s biome: "
    color = gets.chomp.to_s
    print "\nDistance of planet from #{@star_name}(km): "
    distance = gets.chomp.to_f
    print "\nMass of #{planet_name}(kg): "
    mass = gets.chomp.to_f
    print "\nInteresting features of #{planet_name}: "
    fun_fact = gets.chomp.to_s

    new_planet = Planet.new(planet_name, color, distance, mass, fun_fact)

    add_planet(new_planet)
    print "\nData captured..."
  end

end
