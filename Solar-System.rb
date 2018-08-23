require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Milky Way')
  earth = Planet.new("Earth", "Blue", 12324.2, 23242.4, "Earth has lots of water!")
  jupiter = Planet.new("Jupiter", "Red", 1234535.4, 23.2, "Jupiter is so hot" )
  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)

  loop do
    puts "Welcome to Outer Space!\n"
    puts "Pick the letter next to what you want to do:
    \nA for a planet list\nB for details on a planet\nC to add a planet\nD to stop playing."

    user_input = gets.chomp.upcase
    if user_input == "A"
      puts solar_system.list_planets

    elsif user_input == "B"
      puts "What planet do you want to details on?:"
      users_planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(users_planet)
      puts found_planet.first.summary

    elsif user_input == "C"
      puts "What is the name of your planet?"
      new_name = gets.chomp
      puts "What is the color of #{new_name}?"
      new_color = gets.chomp
      puts "What is the mass in kg of #{new_name}?"
      new_kg = gets.chomp.to_f
      puts "What is the distance to the sun from #{new_name}?"
      new_distance = gets.chomp.to_f
      puts "What is a fact about #{new_name}?"
      new_fact = gets.chomp
      new_planet = Planet.new("#{new_name}","#{new_color}",new_kg, new_distance, "#{new_fact}" )
      solar_system.add_planet(new_planet)
      
    elsif user_input == "D"
      puts "ok, BYE"
      break
    end
  end
end
main
