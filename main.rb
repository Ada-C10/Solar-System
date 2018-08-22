require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def get_user_choice
  # List user options
  puts
  puts "What would you like to do? Here are your options."
  puts
  puts "Option 1. List Planets"
  puts "Option 2. Exit"
  puts "Option 3. Planet Details"
  puts
  print "Enter the number of your choice: "
  puts

  # get option choice from user - verify for valid choice
  user_choice = gets.chomp.to_i

  while ![1, 2, 3].include?(user_choice)
    print "Please enter a valid option: "
    user_choice = gets.chomp.to_i
  end
  return user_choice
end


def main
  # Creates solar_system array to collect data on our planets
  solar_system = SolarSystem.new('Sol')

  # creates instances of planets, adds them to planet array.
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 5.791e7, 'Mercury is the closest planet to the sun')
  solar_system.add_planet(mercury)

  venus = Planet.new('Venus', 'pearl colored', 4.8675e24, 1.082e8, 'Venus is named after the Roman goddess of love and beauty. It is the second-brightest natural object in the night sky after the Moon')
  solar_system.add_planet(venus)

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet known to support life')
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"')
  solar_system.add_planet(mars)

  jupiter = Planet.new('Jupiter', 'red', 1.8982e27, 7.7857e8, 'Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"Jupiter has been known to astronomers since antiquity.[14] The Romans named it after their god Jupiter')
  solar_system.add_planet(jupiter)

  puts
  puts "Welcome to the Solar System program."
  puts
  user_choice = get_user_choice

  while user_choice != 2
    case user_choice
    when 1
      planet_list = solar_system.list_planets
      puts planet_list
      puts
    when 3
      print "What planet do you want to learn about? "
      puts
      planet = gets.chomp
      while planet == "" || solar_system.find_planet_by_name(planet) == "No valid planet name entered"
        print "Please enter a valid planet name: "
        planet = gets.chomp
      end
      puts
      puts solar_system.find_planet_by_name(planet).summary
      puts
    end
    user_choice = get_user_choice
  end
  puts "Thank you for using the Solar System Program"
end
main
