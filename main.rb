require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  # Creating an instance of SolarSystem
  solar_system = SolarSystem.new("Sol")

  # Creating first instance of Planet
  planet_1 = Planet.new("Mercury", "Gray", 0.330, 57.9, "Smallest planet in our Solar System")

  # Creating second instance of Planet
  planet_2 = Planet.new("Venus", "Light Gray", 4.87, 108.2, "Spins in an opposite direction as compared to all other planets in the Solar System")

  # Welcome message
  puts "******** Welcome to the Solar System Program! ********"
  puts "These are the options:"
  puts "1. View planet details"
  puts "2. View summary for all planets"
  puts "3. Add a planet"
  puts "4. Exit program"
  puts "Please make a selection: "
  selection = gets.chomp

end

main
