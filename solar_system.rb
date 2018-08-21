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
    first_planet_info = @planets.select do |individual_planet|
      individual_planet.name == planet_one.capitalize
    end
    distance_one = first_planet_info[0].distance_from_sun_km

    second_planet_info = @planets.select do |individual_planet|
      individual_planet.name == planet_two.capitalize
    end
    distance_two = second_planet_info[0].distance_from_sun_km

    return (distance_one - distance_two).abs
  end

  def user_added_planet
    print "What is the name of the planet? "
    name = gets.chomp.capitalize
    print "What color is the planet? "
    color = gets.chomp
    print "What is the mass in kg? "
    mass = gets.chomp.to_f
    print "What is the distance from the sun? "
    distance_from_sun = gets.chomp.to_f
    print "Name one fun fact about this planet: "
    fun_fact = gets.chomp

    new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)
    self.add_planet(new_planet)
  end

  def user_wanted_distance
    print "Enter first planet: "
    planet_one = gets.chomp.capitalize
    print "Enter second planet: "
    planet_two = gets.chomp.capitalize
    distance = self.distance_between(planet_one, planet_two)
    puts "The distance between #{planet_one} and #{planet_two} is #{'%.2f' % distance} km.\n\n"
  end

  def user_planet_details
    print "What is the name of the planet you wish to learn about? "
    planet_name = gets.chomp
    found_planet = self.find_planet_by_name(planet_name)
    puts "#{found_planet[0].summary}\n\n"
  end

end
