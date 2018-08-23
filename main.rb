require_relative 'planet'
require_relative 'solar_system'

#### wave 1
def main
 earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')


mars = Planet.new('Mars', 'red', 6.39e23, 1.524e8, 'Named after the Roman god of war')

#### wave 2

solar_system = SolarSystem.new('Sol')
solar_system.add_planet(earth)
solar_system.add_planet(mars)

#
# list = solar_system.list_planets
# puts list
#
# found_planet = solar_system.find_planet_by_name('Earth')
# puts found_planet
# puts found_planet.summary

#### wave 3

valid_input = ["list planets", "exit", "planet details", "add planet"]

  while true #prompts the user repeatedly
    puts
    puts "Choose one of these options:\n1. List planets\n2. Planet details\n3. Add planet\n4. Exit"
    print "Type here: "
    input = gets.chomp.downcase

    until valid_input.include?(input)
      print "invalid, try again. Type here: "
      input = gets.chomp.downcase
    end

    if input == "list planets"
      puts solar_system.list_planets
    elsif input == "planet details"
      puts
      puts "Here are planets you can learn about:"
      puts solar_system.list_planets
      puts
      print "Select planet: "
      which_planet = gets.chomp.downcase
      puts
      puts solar_system.find_planet_by_name(which_planet).summary
    elsif input == "add planet"
      puts
      puts "To add a planet, enter some information and your planet will appear under the Planets list: "

      print "Name: "
      add_name = gets.chomp.capitalize
      print "Color: "
      add_color = gets.chomp
      print "Mass kg: "
      add_mass = gets.chomp
      print "Distance km: "
      add_distance = gets.chomp
      print "Fun fact: "
      add_fact = gets.chomp

      new_planet = Planet.new(add_name, add_color, add_mass, add_distance, add_fact)

      solar_system.add_planet(new_planet)

    elsif input == "exit"
      return
    end
  end

end


main
