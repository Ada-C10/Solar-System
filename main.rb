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

  def learn (solar_system)
    print "To learn more about any of the planets located in the solar system named #{solar_system.star_name}, press enter. If you'd like to exit the program entirely, type 'exit'.  "
    list_exit = gets.chomp.downcase

    if list_exit != "exit"
      # puts "Below are the planets currently in the solar system named #{solar_system.star_name}: "
      list = solar_system.list_planets
      puts list
      print "Which planet would you like to learn more about?   "
      learn = gets.chomp.capitalize
    else
      exit
    end

    found_planet = solar_system.find_planet_by_name(learn)
    #
    # accounting for an input that isn't one of the planets listed
    if found_planet == nil
      puts "That planet isn't one of the options.  Please type the name of one of the planets on this list: "
      puts list
      learn = gets.chomp.capitalize
    end
    found_planet = solar_system.find_planet_by_name(learn)
    #
    puts found_planet.summary
  end

  def want_add_planet
    print "Would you like to add a planet to the solar system?  Type 'yes' to add a planet or 'exit' to leave the program entirely."
    add_planet_answer = gets.chomp.downcase

    if add_planet_answer == "yes"
      return
    else
      exit
    end
  end

  def add_planet_interactive
    new_planet = nil
    print "What's the name of your planet you'd like to add? "
    name = gets.chomp
    print "What's the color of #{name}? "
    color = gets.chomp
    print "What's the mass (in kg) of #{name}? "
    mass = gets.chomp
      while mass.to_i == 0
        puts "That is an invalid answer.  Please enter the mass of #{name} in kilograms."
        mass = gets.chomp
      end
    print "What's the distance from the sun (in km) of #{name}? "
    distance = gets.chomp
      while distance.to_i == 0
        puts "That is an invalid answer.  Please enter the distance of #{name} fron the sun in kilometer."
        distance = gets.chomp
      end
    print "What is one fun fact about #{name}? "
    fun_fact = gets.chomp
    new_planet = Planet.new(name, color, mass, distance, fun_fact)
    return new_planet
  end

  # Begins the interactive portion
  puts "Welcome to Carly's Planet Potpourri"

  # looping through an arbitrary 10 times, as the user can exit at many points
  10.times do
    learn(solar_system)
    want_add_planet
    # calling the below method while simultaneously adding the planet to the main list of planets in the solar system.
    solar_system.add_planet(add_planet_interactive)
    puts "Congratulations!  Your planet has now officially been added to the list of planets!"
  end

end

main
