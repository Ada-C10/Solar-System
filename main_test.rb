require_relative 'planet'
require_relative 'solar_system'

def main
  neptune = Planet.new('Neptune', 'blue', 1050.9318, 4498252900, 'farthest known planet from the Sun in the Solar System')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  saturn = Planet.new('Saturn', 'yellowish-brown', 5.6834e26, 1433449370, 'famous for rings')
  mars = Planet.new('Mars', 'red', 10.972e24, 4.497e8, 'Funkiest planet')
  venus = Planet.new('Venus', 'yellowish-white', 19.972e24, 2.497e8, 'Cheesiest planet')

  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(neptune)
  solar_system.add_planet(saturn)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  puts "What do you want to do next? List planets, Exit, Planet details, or Add planet"
  user_answer = gets.chomp.capitalize

  until user_answer == "Exit"
    while (user_answer != "List planets") && (user_answer != "Exit") && (user_answer != "Planet details") && (user_answer != "Add planet")
      puts "Your choices are: List planets, Exit, Planet details, or Add planet"
      user_answer = gets.chomp.capitalize
    end
    if user_answer == "Exit"
      exit
    end

    if user_answer == "List planets"
      puts solar_system.list_planets
    elsif user_answer == "Planet details"
      puts "What planet do you wish to learn about?"
      planet_chosen = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet_chosen)
      if found_planet == nil
        puts "No such planet!"
      elsif found_planet.class == Array
        puts "There were muliple planets."
      else
        puts found_planet.summary
      end

    elsif user_answer == "Add planet"
      puts "Please give me the planet's name:"
      name = gets.chomp

      puts "Please give me the planet's color:"
      color = gets.chomp

      puts "Please give me the planet's mass in kg:"
      mass_kg = gets.chomp
      until mass_kg =~ /[[:digit:]]/
        puts "Please enter a number:"
        mass_kg = gets.chomp
      end
      mass_kg.to_i

      puts "Please give me the planet's distance from the sun in km:"
      distance_from_sun_km = gets.chomp
      until distance_from_sun_km =~ /[[:digit:]]/
        puts "Please enter a number:"
        distance_from_sun_km = gets.chomp
      end
      distance_from_sun_km.to_i

      puts "Please give me a fun fact about the planet:"
      fun_fact = gets.chomp

      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
    end
    puts "What do you want to do next? List planets, Exit, Planet details, or Add planet"
    user_answer = gets.chomp.capitalize

  end

  if user_answer == "Exit"
    exit
  end

end

main
