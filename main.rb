require_relative 'planet'
require_relative 'solar_system'

def main
  horus = SolarSystem.new('Horus')

  wakanda = Planet.new('Wakanda', 'black', 5.972e24, 1.496e8, 'it is the home planet of descendants from afro-futuristic societies')
  horus.add_planet(wakanda)

  redhot = Planet.new('Redhot', 'red', 0.732e24, 64.466e8, 'it is known as \'Big Red\' with an atmosphere that smell of anise seeds')
  horus.add_planet(redhot)

  zion = Planet.new('Zion', 'blue-gray', 0.330e24, 57.9e6, 'it is the home planet to hackers who have escaped the Matrix')
  horus.add_planet(zion)

  rightbellhooks = Planet.new('Rightbellhooks', 'brown', 0.702e69, 61.986e4, 'Queerest teraformed planet in the next three galaxies')
  horus.add_planet(rightbellhooks)

  # horus.add_planet(zion)
  # horus.add_planet(wakanda)
  # horus.add_planet(redhot)
  # horus.add_planet(rightbellhooks)

  puts "Welcome to my Universe. #{horus} is my solar system."

  in_progress = true

  while in_progress
    in_progress = false

    puts "\nHere are a few options:"
    puts "(1)List planets in system\n(2)Search for a plane\n(3)Create a planet\n(4)Exit"

    user_input = gets.chomp

    if user_input == "1"
      puts horus.list_planets
      in_progress = true
    elsif user_input == "2"
      puts "What planet would you like information about: "
      planet_input = gets.chomp
      puts horus.find_planet_by_name(planet_input)
      in_progress = true
    elsif user_input == "3"
      puts "Name a planet: "
      user_planet_name = gets.chomp
      puts "Color: "
      user_planet_color = gets.chomp
      puts "Planet mass in kg: "
      user_planet_mass = gets.chomp.to_i
      puts "Distance from Horus: "
      user_planet_distance = gets.chomp.to_i
      puts "Enter a fun fact about your planet: "
      user_planet_fun_fact = gets.chomp

     user_planet_name = Planet.new("#{user_planet_name}", "#{user_planet_color}", "#{user_planet_mass}", "#{user_planet_distance}", "#{user_planet_fun_fact}")

      horus.add_planet(user_planet_name)

      in_progress = true
    elsif user_input == "4"
      puts "EXIT"
      in_progress = false
    end

  end
    # within main - create objects and test class (cookie cutter) methods here. This is the cookie tray where you test them out
    #   zion = Planet.new('Zion', 'blue-gray', 0.330e24, 57.9e6, 'it is the home planet to hackers who have escaped the Matrix')
    #   puts zion.summary
    #   puts zion.class
    #
    #   wakanda = Planet.new('Wakanda', 'black', 5.972e24, 1.496e8, 'it is the home planet of descendants from afro-futuristic societies')
    #   puts wakanda.summary
    #
    #   redhot = Planet.new('Redhot', 'red', 0.732e24, 64.466e8, 'it is known as \'Big Red\' with an atmosphere that smells of anise seeds')
    #
    #   rightbellhooks = Planet.new('Rightbellhooks', 'brown', 0.702e69, 61.986e4, 'Queerest teraformed planet in the next three galaxies')
    #
    #   arcmoon = Planet.new('Arcmoon', 'white', 2.132e09, 5.538e6, 'has an atomosphere that gives all conscience beings telepathic abilities')

    # # create another object
    #   horus = SolarSystem.new('Horus')
    #   #.name or .color are like methods to retrieve portions of an object
    #   #on this object - call a method, with a parameter of another object
    #   horus.add_planet(zion)
    #   horus.add_planet(wakanda)
    #   horus.add_planet(redhot)
    #   horus.add_planet(rightbellhooks)
    #   horus.add_planet(arcmoon)
    #
    #   puts horus.list_planets
    #
    #   puts horus.find_planet_by_name("Zion")

  end

  main
