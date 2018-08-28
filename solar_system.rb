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
    output = "\nPlanets orbiting #{@star_name}\n"

    @planets.each_with_index do |planet, index|
      output = output + "#{index + 1}. #{planet.name}\n"
    end

    return output
  end

  def find_planet_by_name(string)
    found_planet = @planets.find_all { |planet| planet.name.downcase == string.downcase }

    if found_planet.length > 1
      puts "Hm, we found multiple planets by that name. Maybe you can figure it out?"
      puts found_planet
      return found_planet
    else
      return found_planet[0]
    end
  end

  def distance_between
    puts "\nPls tell me the names of the two planets you would like to find the distance between"
    puts "First planet:"
    planet1 = gets.chomp

    puts "Second planet:"
    planet2 = gets.chomp

    planets_array = []

    @planets.each do |planet|
      planets_array << planet.name
    end

    raise ArgumentError.new if planets_array.include?(planet1.capitalize) == false || planets_array.include?(planet2.capitalize) == false

    planet1 = find_planet_by_name(planet1).distance_from_sun_km.to_i
    planet2 = find_planet_by_name(planet2).distance_from_sun_km.to_i

    if planet1 > planet2
      distance = planet1 - planet2
    else
      distance = planet2 - planet1
    end

    puts "\nThe distance between your planets is: " + distance.to_s
  end

end
