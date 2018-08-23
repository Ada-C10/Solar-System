require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
 # hard coding planets into solar_system
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'grey', 4.454e90, 3.45e9, 'Mercury fun fact')
  venus = Planet.new('Venus', 'orange', 6.43e93, 4.12e9, 'Venus fun fact')
  mars = Planet.new('Mars', 'red', 4.238e82, 2.19e4, 'Mars fun fact')
  jupiter = Planet.new('Jupiter', 'brown', 6.492e30, 4.19e6, 'Jupiter fun fact')
 # adding hard-coded planets to system
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
 # loop for user input
  loop do
    puts "Would you like to 1. List planets, \n 2. See planet details, \n 3. Add planet, or \n 4. Exit? Enter a number"
    input = gets.chomp!
    if input == "1"
      list = solar_system.list_planets
      puts list
      exit
    elsif input == "2"
      puts "Which planet would you like to learn about?"
      user_input = gets.chomp!
      found_planet = solar_system.find_planet_by_name(user_input)
      puts found_planet
      exit
    elsif input == "3"
      puts "Planet name:"
      user_planet = gets.chomp!
      puts "Color:"
      user_color = gets.chomp!
      puts "Mass(kg)"
      user_mass = gets.chomp!
      puts "Distance from the sun (km):"
      user_distance = gets.chomp!
      puts "Fun fact:"
      user_fact = gets.chomp!
      user_planet = Planet.new(user_planet, user_color, user_mass, user_distance, user_fact)
      solar_system.add_planet(user_planet)
      puts solar_system.list_planets
      puts user_planet.summary
    elsif input == "4"
      exit
    else
      puts "Sorry, not a valid selection"
    end
  end
end

main
