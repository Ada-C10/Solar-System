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

  exit_switch = false

  puts "_** Universal Fictional Planetary Database **_\n"
  puts "1. List Planets\n"
  puts "2. Planet Information\n"
  puts "3. Enter New Planet\n"
  puts "4. Exit\n"
  puts "************************************************"

  while exit_switch == false do
    print "Enter database selection: "
    input = gets.chomp.to_i
    if input == 1
      puts star.list_planets
    elsif input == 2
      planet = get_planet_name(star)
      puts planet.summary
    elsif input == 3
      add_a_planet(star)
      puts "...Entered into system. Thank You."
    elsif input == 4
      exit_switch = true
      exit
    end
  end
end

def get_planet_name(solar_system)
  print "Enter planet name to access: "
  planet = gets.chomp.to_s
  return solar_system.find_planet_by_name(planet)
end

def add_a_planet(star)
  print "Enter new planet name: "
  planet_name = gets.chomp.to_s
  print "Description of planet: "
  color = gets.chomp.to_s
  print "Distance of planet from it's star: "
  distance = gets.chomp.to_f
  print "Mass of planet: "
  mass = gets.chomp.to_f
  print "Enter any interesting features: "
  fun_fact = gets.chomp.to_s

  new_planet = Planet.new(planet_name, color, distance, mass, fun_fact)

  star.add_planet(new_planet)
  print "Data captured..."
end

main
