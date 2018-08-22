# main.rb
require_relative "lib/planet"
require_relative "lib/solar_system"

# asks the user for name of planet they wish to learn about
# calls on methods in SolarSystem class to display details or error message
def planet_details(solar_system)
  puts "What planet would you like to learn about?"
  planet = gets.chomp

  planet_findings = solar_system.find_planet_by_name(planet)
  if planet_findings.class == Planet
    puts planet_findings.summary
  else
    puts planet_findings
  end

end

# prompts the user until input is an integer or float greater than 0
def check_if_natural_num(num, detail)
  until num.to_f.to_s == num || num.to_i.to_s == num && num.to_f > 0
    print "Please enter a number for #{detail} greater than 0: "
    num = gets.chomp
  end

  return num.to_f

end

# prompts the user for details of a planet
# calls on SolarSystem method to add this planet to the solar system
def add_planet_option(solar_system)
  puts "Please provide some details for the planet you'd like to add."

  print "Planet name: "
  name = gets.chomp

  print "Color: "
  color = gets.chomp

  print "Mass (kg): "
  mass_kg = gets.chomp
  mass_kg = check_if_natural_num(mass_kg, 'Mass (kg)')

  print "Distance from the sun (km): "
  distance_from_sun_km = gets.chomp
  distance_from_sun_km = check_if_natural_num(distance_from_sun_km, 'Distance from the sun (km)')

  print "Fun Fact: "
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

  solar_system.add_planet(new_planet)
end

# prompts the user for a name of planet in this solar system
# returns the address of the planet if found
def get_planet_name(order, solar_system)
  puts "Enter the #{order} planet: "
  planet = gets.chomp
  planet_findings = solar_system.find_planet_by_name(planet)

  until planet_findings.class == Planet
    puts "Planet #{planet_a} not found."
    print "Please enter the name of first planet: "
    planet = gets.chomp
    planet_findings = solar_system.find_planet_by_name(planet)
  end

  return planet

end

# prints the distance between 2 planets
# calls on get_planet_name to get the planet names and
# SolarSystem's distance_between method to determine result
def get_distance_between_planets_option(solar_system)

  planets = ['first', 'second'].map do |order|
    get_planet_name(order, solar_system)
  end

  distance = solar_system.distance_between(planets[0], planets[1])

  puts "The distance between #{planets[0].capitalize} and #{planets[1].capitalize} is #{distance} km."

end


def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 1.416e8, 'Pieces of Mars have been found on Earth')
  venus = Planet.new('Venus', 'gray-ish', 4.867e24, 6.724e7, 'Second brightest object in the night sky after the Moon')
  jupiter = Planet.new('Jupiter', 'red-orange/pizza-like', 1.898e27, 4.838e8, 'It is the fastest spinning planet in the solar system')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(jupiter)

  prompt = "What would you like to do next?"
  prompt += "\n1.  list planets"
  prompt += "\n2.  planet details"
  prompt += "\n3.  add planet"
  prompt += "\n4.  get distance between 2 planets"
  prompt += "\n5.  exit"

  puts "Welcome to the Solar System program\n\n"
  puts prompt
  input = gets.chomp.downcase

  until input == "exit" || input == "5"
    case input
    when "1", "list planets"
      puts solar_system.list_planets
    when "2", "planet details"
      planet_details(solar_system)
    when "3", "add planet"
      add_planet_option(solar_system)
    when "4", "get distance between 2 planets"
      get_distance_between_planets_option(solar_system)
    else
      puts "#{input} is not an option."
    end

    puts
    puts prompt
    input = gets.chomp.downcase
  end

  puts "Thank you for using the solar system program!"
end

main
