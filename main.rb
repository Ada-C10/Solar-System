require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main

  star = SolarSystem.new('Sol')

  tatooine = Planet.new('Tatooine', 'sand dunes', 3.677e18, 1.496e8, 'Has two suns and Han shot first.')
  hoth = Planet.new('Hoth', 'artic ice', 5.972e28, 4.447e10, 'You can ride wampas here')
  endor = Planet.new('Endor', 'forrest green', 5.972e24, 1.496e11, 'Home to Ewoks')
  kamino = Planet.new('Kamino', 'stormy ocean', 7.187e24, 9.96e8, 'Home to industrial cloning')

  star.add_planet(tatooine)
  star.add_planet(hoth)
  star.add_planet(endor)
  star.add_planet(kamino)

  puts "_** Universal Fictional Planetary Database **_\n"
  puts "1. List Planets\n"
  puts "2. Planet Information\n"
  puts "3. Enter New Planet\n"
  puts "4. Intergalactic Distance Calculator\n"
  puts "5. Galactic Hyperspeed Travel Time Estimator\n"
  puts "6. Exit\n"
  puts "**************************************************"

  loop do
    print "\nEnter database selection: "
    input = gets.chomp.to_s
    case
    when input == "1"
      puts star.list_planets
    when input == "2"
      planet = star.get_planet_name
      puts planet.summary
    when input == "3"
      star.add_a_planet
      puts "\n...Entered into system. Thank You."
    when input == "4"
      star.find_distance_between
    when input == "5"
      star.calculate_travel_time
    when input == "6"
      exit
    when input =~ /[[:alpha:]]/
      puts "\nError. Invalid input."
    end
  end
end

main
