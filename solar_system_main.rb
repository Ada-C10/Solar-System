require_relative 'planet'
require_relative 'solar_system'

def main()
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  # puts earth.name
  # puts earth.summary



  #create an instance of SolarSystem

  solar_system = SolarSystem.new('Sol')

  #add planets to the planets class
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

  solar_system.add_planets(earth)

  mars = Planet.new("Mars", "red", 6.417e11, 2.279e8, "Only planet known to support Matt Damon")

  solar_system.add_planets(mars)

  saturn = Planet.new("Saturn", "yellow",
    5.6834e14, 1.433e11, "Saturn is the second largest planet and is best known for its fabulous ring system that was first observed in 1610 by the astronomer Galileo Galilei")

  solar_system.add_planets(saturn)

  venus = Planet.new("Venus", "creamy", 4.8675324, 108.2e8, "A day on Venus lasts longer than a year")

  solar_system.add_planets(venus)

  # lists the planets I added to the solar system
  list = solar_system.list_planets
  # puts list

  # calls the find_planet_by_name method to return the instance of planet
  found_planet = solar_system.find_planet_by_name('mars')
  # puts found_planet
  # puts found_planet.summary


  puts "You have 2 options: #1: List Planets. #2: Add a planet. #3: Exit. What would you like to do?"

  user_input = gets.chomp.to_i

  if user_input == 3
    exit
  elsif user_input == 1
    puts list
    puts "Which planet would you like to know more about?"
    user_input = gets.chomp.capitalize
    print found_planet = solar_system.find_planet_by_name(user_input)

    print found_planet.summary

  else user_input == 2
    puts "Which planet would you like to add?"
    planet_input = gets.chomp

    add_planet = []
    add_planet << planet_input
    puts "What is #{planet_input}'s color?'"
    color = gets.chomp
    add_planet << color
    puts "What is #{planet_input}'s mass in kg?"
    mass = gets.chomp.to_i
    add_planet << mass
    puts "What is #{planet_input}'s distance from the sun in km?"
    distance = gets.chomp.to_i
    add_planet << distance
    puts "What is a fun fact about #{planet_input}?"
    fact = gets.chomp
    add_planet << fact
    # print add_planet

    planet_input = Planet.new(planet_input, color, mass, distance, fact)

    solar_system.add_planets(planet_input)

    list = solar_system.list_planets
    puts list
    puts planet_input.summary

  end



end

main
