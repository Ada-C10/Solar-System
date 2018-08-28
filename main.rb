require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def check_String(input_s)
  while input_s.nil? || input_s.strip == ""
    print "Invlid input, try again."
    input_s = gets.chomp
  end
  return input_s
end

def check_number(input_n)
  while input_n <= 0
    print "Invalid input, please enter a postive number: "
    input_n = gets.chomp.to_i
  end
  return input_n
end


# define a method to add a new planet based on user's input
def planet_details(solar_system)
  solar_names = []
  solar_system.planets.each_with_index do |item, i|
    puts "#{i+1}. #{item.name}"
    solar_names.push(item.name.downcase)
  end

  print "Please enter the name of the planet you to know the details: "
  planet_picked = gets.chomp.downcase

  while !solar_names.include?(planet_picked)
    puts "Invalid planet name. "
    print "Please enter the name of the planet you to know the details: "
    planet_picked = gets.chomp.downcase
  end

  result = solar_system.find_planet_by_name(planet_picked).summary
  puts result
end

# define a method to add a new planet based on user's input
def add_planet(solar_system)
# Ask the user for details about the planet
  print "Enter the name of the planet: "
  name = gets.chomp
  name = check_String(name)
  print "Enter the color of the planet: "
  color = gets.chomp
  color = check_String(color)
  print "Enter the mass in kg: "
  mass_kg = gets.chomp.to_i
  mass_kg = check_number(mass_kg)

  print "Enter the distance from sun in km: "
  distance_from_sun_km = gets.chomp.to_i
  distance_from_sun_km = check_number(distance_from_sun_km)
  print "Enter a fun fact: "
  fun_fact = gets.chomp
  fun_fact = check_String(fun_fact)
# Create a new instance of Planet with that info
  # binding.pry
  planet_added = Planet.new(name, color, mass_kg, distance_from_sun_km,fun_fact)
# Add it to the SolarSystem
  solar_system.add_planet(planet_added)
  return solar_system
end



# define a method called main
def main
  moon = Planet.new('Moon','white', 3.972e24, 1.212e8, 'water-ice on surface')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red-yellow', 9.972e24, 2.496e8, 'The second largest planet in this solar system')
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(moon)
  solar_system.add_planet(mars)

  puts "Welcome to solar_system."
  puts "What to do next?\n1. List the planet\n2. Planet details\n3. Add Planet\n4. Exit\n\n"
  user_input = gets.chomp.to_i

  while user_input != 4
    if user_input == 1
      puts solar_system.list_planets
      puts ""
    elsif user_input == 2
      planet_details(solar_system)
      puts ""
    elsif user_input == 3
      solar_system = add_planet(solar_system)
    else
      puts "Invalid input, please enter 1-4 to do the selection."
    end
    puts "What to do next?\n1. List the planet\n2. Planet details\n3. Add Planet\n4. Exit\n\n"
    user_input = gets.chomp.to_i
  end
end


# main
main
