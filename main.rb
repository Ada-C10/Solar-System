require_relative 'planet.rb'
require_relative 'solar_system.rb'


def main
  mercury = Planet.new "Mercury",
                       "dark grey",
                       3.285e23,
                       5.791e7,
                       "has an earth year of about 88 days"

  mars = Planet.new "Mars",
                       "red",
                       6.39e23,
                       2.27e8,
                       "men are in fact, not from here"


  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(mercury)
  solar_system.add_planet(mars)
  ###
  # Create user options to list planets, add planet details, or exit
  puts 'Welcome to the Solar System Explorer!'
  puts 'As Neil deGrasse Tyson once said,'
  puts "'The universe is under no obligation to make sense to you.'"
  puts "*" * 50
  puts 'Enter the command corresponding to one of the following options: '
  puts "\tEnter <list> to List planets"
  puts "\tEnter <add> to Add planet details"
  puts "\tEnter <find> to Learn planet details"
  puts "\tEnter <dist> to find the distance between two planets"
  puts "\tEnter <exit> to Exit program"
  user_do = ''
  until user_do == 'exit'
    puts "Enter list, add, find, dist, or exit: "
    user_do = gets.chomp.downcase
    # List planets
    if user_do == 'list'
      list = solar_system.list_planets
      puts "^" * 30
      puts list
      puts "^" * 30
    # add another planet instance with details
    elsif user_do == 'add'
      add_another_planet(solar_system)
    # look up summary for given planet instance
    elsif user_do == 'find'
      puts "Enter the name of the planet to get it's summary: "
      look_up = gets.chomp.downcase
      find = solar_system.find_planet_by_name(look_up)
      puts "=" * 30
      puts find
      puts "=" * 30
    elsif user_do == "dist"
      print "Enter the name of the first planet: "
      planet1 = gets.chomp.capitalize
      print "Enter the name of the second planet: "
      planet2 = gets.chomp.capitalize
      dist = solar_system.distance_between(planet1, planet2)
      puts dist

    # exit w/ NdGT quote
    elsif user_do == 'exit'
      puts "+" * 30
      puts puts "Thanks for exploring...enjoy these parting words:"
      puts "We are part of this universe; we are in this universe,
but perhaps more important than both of those facts,
is that the universe is in us. -Neil deGrasse Tyson"
      exit
    end
  end
end
##!!! not 100% sure if this method should be stored in main or elsewhere
def add_another_planet(solar_system)
  print "Enter the planet's name: "
  name = gets.chomp.capitalize
  print "Enter the planet's color: "
  color = gets.chomp.downcase
  print "Enter #{name}'s mass in kg: "
  mass_kg = gets.chomp.to_i
  print "Enter #{name}'s distance from the sun in km: "
  distance_from_sun_km = gets.chomp.to_i
  print "Enter a fun fact about #{name}: "
  fun_fact = gets.chomp.downcase
  # create new planet instance
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # add planet to solar system class
  solar_system.add_planet(new_planet)
  puts "***The planet #{name} has been successfully added to the solar system.***"
end

main