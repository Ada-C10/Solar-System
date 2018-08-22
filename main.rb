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

  # Begins the control "loop"
  puts "Welcome to Carly's Planet Potpourri"

  def welcome (solar_system)
    puts "Enter 'learn' if you'd like a see a list of the planets, and type 'exit' if you'd like to leave the program entirely."
    list_exit = gets.chomp.downcase

    if list_exit != "exit"
      puts "Below are the planets orbiting #{solar_system.star_name} that you can learn about: "
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
      puts "That planet isn't one of the options.  Please choose from this list: "
      puts list
      learn = gets.chomp.capitalize
    end
    found_planet = solar_system.find_planet_by_name(learn)
    #
    puts found_planet.summary
  end

  #Calling the above method on the parameter solar system
  welcome(solar_system)

  print "Would you like to add a planet? (yes or no) "
  add_planet_answer = gets.chomp.downcase

  def want_add_planet (add_planet)
    if add_planet == "yes"
      return
    else
      exit
    end
  end

  want_add_planet(add_planet_answer)

  def add_planet
    new_planet = nil
    puts "What's the name of your planet?"
    name = gets.chomp.upcase
    puts "What's the color of your planet?"
    color = gets.chomp
    puts "What's the mass (in kg) of your planet?"
    mass = gets.chomp
    puts "What's the distance from the sun (in kg) of your planet?"
    distance = gets.chomp
    puts "What is one fun fact about your planet?"
    fun_fact = gets.chomp
    new_planet = Planet.new(name, color, mass, distance, fun_fact)
    return new_planet
  end

  puts add_planet.summary


  # Testing whether adding the planet Carly will accomplish what I need.
  # carly = Planet.new("Carly", "red", 5.972e24, 1.496e8, "The only planet known to support life")

  # solar_system.add_planet(carly)
  # list = solar_system.list_planets
  # puts list


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
