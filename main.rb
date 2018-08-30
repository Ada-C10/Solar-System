# program takes user input to add planets & list planets
require_relative 'solar_system.rb'
def user_loop
  solar_system = SolarSystem.new('Sol')
  puts "Would you like to add planets? "
  print "  y - add_planets
  n - exit \n"
  print "Type y or n: "
  answer = gets.chomp
  while answer == "y"
    print "What is the name of the planet?: "
    user_name = gets.chomp
    print "What is the planet color?: "
    user_color = gets.chomp
    print "What is the mass: "
    user_mass = gets.chomp.to_f
    print "What is the distance?: "
    user_distance = gets.chomp.to_f
    print "Fun fact: "
    user_funfact = gets.chomp
    user_planet = Planet.new(user_name, user_color, user_mass,
      user_distance, user_funfact)
    solar_system.add_planet(user_planet)
    print "If you would like to add more planets type y/n: "
    answer = gets.chomp
  end
  print "If you would like to list planets type y/n: "
  reply = gets.chomp
  if reply == "y"
    list = solar_system.list_planets
    puts list
  end

  # takes user input to print summary of planet mentioned
  print "Which planet would you like to know about: "
  info = gets.chomp
  found_planet = solar_system.find_planet_by_name(info)
  puts found_planet.summary

end

user_loop
