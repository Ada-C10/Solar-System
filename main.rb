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
  puts "Option 4. Add a New Planet"
  puts
  print "Enter the number of your choice: "
  puts

  # get option choice from user - verify for valid choice
  user_choice = gets.chomp.to_i

  while ![1, 2, 3, 4].include?(user_choice)
    print "Please enter a valid option: "
    user_choice = gets.chomp.to_i
  end
  return user_choice
end

# method to add planets to solar_system
def add_planet
  puts "Please enter information for your new planet."
  planet_info = {name: '', color: '', mass_kg: '', distance_from_sun_km: '', fun_fact: ''}
  planet_info.keys.each do | key |
    puts "Please enter a value for #{key}"
    planet_info[key] = gets.chomp
  end
  return planet_info
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

  # this entry was by my son Josh and I couldn't resist putting in my code.
  death_vally = Planet.new('death vally', 'red-hot', 300, 0.5, 'there are no living things on death vally. if you go anywhere near there YOU WILL DIE! yay. death vally is litiraly a ball of fire! one day it will pop and a new alian race will come out of it and wage war against us. it will be a long war but in the end they will realise that they are so underdoveloped that they re fighting us with litaral rocks and sticks! so than we will live in harmony with this new alian speiceas. 2000 years later another alian race will come up and wage war against us. it will be a valiant effort but in the end they will wipe us, and the other alian specias off the map. a virus will spread amungst the new alian specias and they will be wiped out too. everyone will die just because some scientests were stupid enough not to blast the "death vally" planet out of the sky because they thought it was \'facinating\' the end. -writen by josh b. 2018 wensday augest the 22nd 10:28..')
  solar_system.add_planet(death_vally)

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
        puts
        print "Please enter a valid planet name: "
        planet = gets.chomp
      end
      puts
      puts solar_system.find_planet_by_name(planet).summary
      puts
    when 4
      puts "Enter name so we can check if it's already in the database: "
      name = gets.chomp
      puts
      while solar_system.find_planet_by_name(name) != "No valid planet name entered"
        puts "That already exists, please enter another choice:"
        name = gets.chomp
      end
      puts "Ok, you can enter that one!"
      new_planet = add_planet
      my_planet = Planet.new(new_planet[:name], new_planet[:color], new_planet[:mass_kg], new_planet[:distance_from_sun_km], new_planet[:fun_fact])
      solar_system.add_planet(my_planet)
      puts
      puts "#{my_planet.name} has been added to the Solar System"
    end
    user_choice = get_user_choice
  end
  puts "Thank you for using the Solar System Program"
end
main
