# main.rb
require_relative "lib/planet"
require_relative "lib/solar_system"
require 'pry'

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

def check_if_natural_num(num, detail)
  until num.to_f.to_s == num || num.to_i.to_s == num && num.to_f > 0
    print "Please enter a number for #{detail} greater than 0: "
    num = gets.chomp
  end
  return num.to_f
end

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

def get_distance_between_planets_option(solar_system)
  puts "Enter the first planet: "
  planet_a = gets.chomp
  planet_a_findings = solar_system.find_planet_by_name(planet_a)
  until planet_a_findings.class == Planet
    puts "Planet #{planet_a} not found."
    print "Please enter the name of first planet: "
    planet_a = gets.chomp
    planet_a_findings = solar_system.find_planet_by_name(planet_a)
  end

  puts "Enter the second planet: "
  planet_b = gets.chomp
  planet_b_findings = solar_system.find_planet_by_name(planet_b)
  until planet_b_findings.class == Planet
    puts "Planet #{planet_b} not found."
    print "Please enter the name of second planet: "
    planet_b = gets.chomp
    planet_b_findings = solar_system.find_planet_by_name(planet_b)
  end

  distance = solar_system.distance_between(planet_a, planet_b)
  puts "The distance between #{planet_a} and #{planet_b} is #{distance} km."


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

  prompt = "What would you like to do next?\n1.  list planets\n2.  planet details\n3.  add planet\n4.  get distance between 2 planets\n5.  exit"

  puts "Welcome to the Solar System program"
  puts
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
