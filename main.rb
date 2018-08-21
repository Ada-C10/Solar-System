require_relative 'planet'
require_relative 'solar_system'

def main
# Creates the solar system called Sol
  solar_system = SolarSystem.new('Sol')

# Creates instances of each of the Planet class
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The only planet known to support life")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "orange", 6.39e23, 2.279e8, "Suspected to have traces of water")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "white, red, orange, brown, and yellow", 1.898e27, 7.785e8, "Has rings")
  solar_system.add_planet(jupiter)

# Begins the control loop
  puts "Welcome to Carly's Planet Potpourri"

  def learn_exit
    learn_exit_answer = ""
    puts "Would you like learn about planets or exit the program?"
    print "Learn or Exit?  "
    learn_exit_answer = gets.chomp.downcase
    return learn_exit_answer
  end

  if learn_exit == "exit"
    exit
  elsif learn_exit == "learn"
    puts "Below are the planets orbiting #{solar_system.star_name} that you can learn about: "
    list = solar_system.list_planets
    puts list
    print "Which planet would you like to learn more about?   "
    learn = gets.chomp.capitalize
  else
    puts "That isn't a valid option."
    learn_exit = gets.chomp.downcase
  end

  found_planet = solar_system.find_planet_by_name(learn)

  # accounting for an input that isn't one of the planets listed
  if found_planet == nil
    puts "That planet isn't one of the options.  Please choose from this list: "
    puts list
    learn_exit = gets.chomp.capitalize
  end
  found_planet = solar_system.find_planet_by_name(learn)

  puts found_planet.summary

  # asking the user if they'd like to add a planet


  # puts earth.name #Earth
  # puts earth.fun_fact #Only known planet to support life
  # puts earth.color #blue-green
  #
  # puts mars.name
  # puts mars.distance_from_sun_km
  # puts mars.color
  # puts mars.fun_fact

  # puts earth.summary
  # puts mars.summary
  # puts jupiter.summary


  # puts "Planets orbiting #{solar_system.star_name}:"
  # list = solar_system.list_planets
  # puts list
  #
  # found_planet = solar_system.find_planet_by_name("Mars")
  # puts found_planet
  # puts found_planet.name
  # puts found_planet.summary



end

main
