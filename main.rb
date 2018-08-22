require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  puts "What would you like to do? (A/B/C/D)"
  puts "option A: list plannets"
  puts "option B: exit"
  puts "option C: planet details"
  puts "option D: add planet"
  decision = gets.chomp
  if decision.upcase == "C"
    puts "which planet would you like to learn more about?"
    planet = gets.chomp
    found_planet = solar_system.find_planet_by_name(planet)
    puts found_planet.summary
  elsif decision.upcase == "D"
    puts "So, you want to add a planet, I need to know more about it."
    puts "Name?"
    name = gets.chomp
    puts "color?"
    color = gets.chomp
    puts "mass?"
    mass = gets.chomp
    puts "distance_from_sun_km?"
    distance = gets.chomp
    puts "fun_fact?"
    fun_fact = gets.chomp
    planet = Planet.new(name, color, mass, distance, fun_fact)
    solar_system.add_planet(planet)
  elsif decision.upcase == "A"
    list = solar_system.list_planets
    puts list
  end
  until decision.upcase == "B"
    puts "What would you like to do? (A/B/C/D)"
    puts "option A: list plannets"
    puts "option B: exit"
    puts "option C: planet details"
    puts "option D: add planet"
    decision = gets.chomp
    if decision.upcase == "C"
      puts "which planet would you like to learn more about?"
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif decision.upcase == "D"
      puts "So, you want to add a planet, I need to know more about it."
      puts "Name?"
      name = gets.chomp
      puts "color?"
      color = gets.chomp
      puts "mass?"
      mass = gets.chomp
      puts "distance_from_sun_km?"
      distance = gets.chomp
      puts "fun_fact?"
      fun_fact = gets.chomp
      planet = Planet.new(name, color, mass, distance, fun_fact)
      solar_system.add_planet(planet)
    elsif decision.upcase == "A"
      list = solar_system.list_planets
      puts list
    end
  end
end

main
