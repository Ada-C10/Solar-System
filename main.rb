require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def main

  star = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'white-red-orange-brown', 1.898e27, 483.8, 'Largest planet in the Solar System and is 318 times as massive as Earth')

  mars = Planet.new('Mars', 'red', 6.39e23, 141.6, 'The diameter of Mars is 4,212 miles')

  star.add_planet(earth)
  star.add_planet(jupiter)
  star.add_planet(mars)

  # verifies user answer for the intro of the program
  def verify_user_answer(user_answer)
    until user_answer == "1" || user_answer == "2" || user_answer == "3"
      puts "That's not a valid answer. Please enter 1, 2, or 3"
      user_answer = gets.chomp.to_s
    end
    return user_answer
  end

  # verifies user entry for choosing a valid planet to view it's info
  def verify_planet_choice(user_choice)
    until user_choice == "earth" || user_choice == "jupiter" || user_choice == "mars"
      puts "That's not a valid planet on this list! Please type the planet name."
      user_choice = gets.chomp
    end
    return user_choice
  end

  def intro_to_program
    puts "Welcome to Solar System. Please select a number from the following options: "
    puts "1. See a list of existing planets"
    puts "2. Add a planet"
    puts "3. Exit the program"
    puts
  end

  # allows user to input a new planet and it's info
  def add_a_planet(solar_system)
    print "Please enter the planet name:  "
    name = gets.chomp
    print"What is #{name}'s color?  "
    color = gets.chomp
    print "What is the mass of #{name}?  "
    mass_kg = gets.chomp
    print "What is the #{name}'s distance from the sun?  "
    distance_from_sun_km = gets.chomp
    print "What's a fun fact about #{name}?  "
    fun_fact = gets.chomp
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    solar_system.add_planet(new_planet)
    puts
    return "Here is the info you entered about this new planet: \n" + new_planet.summary
  end

  # outputs user choice from intro_to_program definition
  def control_loop_options(solar_system)
    user_answer = verify_user_answer(gets.chomp)
    case user_answer
    when "1"
      puts
      puts "Here are some " + solar_system.list_planets
      puts
      puts "Which planet would you like to see info on?"
      user_choice = verify_planet_choice(gets.chomp)
      found_planet = solar_system.find_planet_by_name(user_choice)
      puts
      puts found_planet

    when "2"
      puts
      puts add_a_planet(solar_system)

    when "3"
      puts
      puts "You are exiting the program. Thanks for playing!"
      exit
    end
  end

  intro_to_program
  control_loop_options(star)

end

main
