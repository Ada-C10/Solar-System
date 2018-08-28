# main.rb
require_relative 'planet'
require_relative 'solar_system'

#This method should create two different instances of Planet and print out some of their attributes.

def main
  #user options: planet details = asking for planet details and displays that info // add planet = allows user to add a new planet


  puts "Let's create a Solar System!"
  puts "What is the name of the main star in your solar system?"
  print "*>*> "
  sun_name = gets.chomp
  solar_system = SolarSystem.new(sun_name)

  puts "What would you like to do now?"
  puts "add planet    planet details    list planets    quit"
  print "*>*> "
  user_command = gets.chomp.downcase

  until user_command == "quit"
    if user_command == "add planet"
      puts "Now let us add some planets. Please enter the planet's name: "
      print "*>*> "
      name = gets.chomp
      puts "What color is your planet? "
      print "*>*> "
      planet_color = gets.chomp
      puts "What is the mass of your planet in kilograms?"
      print "*>*> "
      planet_mass = gets.chomp.to_f
      puts "How far is your planet from its sun in kilometers?"
      print "*>*> "
      distance = gets.chomp.to_f
      puts "Lastly, enter a fun fact about this planet."
      print "*>*> "
      fact = gets.chomp
      puts "Adding planet...."

      new_planet = Planet.new(name, planet_color, planet_mass, distance, fact)
      solar_system.add_planet(new_planet)
      puts "Anything else?"
      print "*>*> "
      user_command = gets.chomp.downcase

    elsif
      user_command == "planet details"
      puts solar_system.list_planets
      if solar_system.planets.length == 0
        puts "This solar system doesn't have any planets!"
      else
        puts "Which planet would you like to know more about?"
        print "*>*> "
        planet_name = gets.chomp
        found_planet = solar_system.find_planet_by_name(planet_name)
        puts found_planet
      end
      puts "Anything else?"
      print "*>*> "
      user_command = gets.chomp.downcase
    elsif
      user_command == "list planets"
      if solar_system.planets.length == 0
        puts "This solar system doesn't have any planets!"
      else
        puts solar_system.list_planets
      end

      puts "Anything else?"
      print "*>*> "
      user_command = gets.chomp.downcase

    elsif
      user_command == "quit"
      puts "Good-bye!"
      exit
    else
      puts "Not a valid command. Try again..."
      print "*>*> "
      user_command = gets.chomp.downcase
    end
  end

end

main
