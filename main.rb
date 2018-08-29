require_relative 'planet'
require_relative 'solar_system'

def num_check(num)
  until num =~ /[[:digit:]]/ && !(num =~ /[[:lower:]]/) && !(num =~ /[[:upper:]]/ )
    puts "Please enter a number:"
    num = gets.chomp
  end
  return num.to_i
end

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

  puts "What do you want to do?\n 1. Exit\n 2. List planets\n 3. Planet details\n 4. Add planet\n or 5. Distance between planets"
  user_answer = gets.chomp

  until user_answer == "Exit"
    while (user_answer != "1") && (user_answer != "2") && (user_answer != "3") && (user_answer != "4") && (user_answer != "5")
      puts "Your choices are:\n 1. Exit\n 2. List planets\n 3. Planet details\n 4. Add planet\n or 5. Distance between planets"
      user_answer = gets.chomp
    end

    if user_answer == "1"
      exit
    elsif user_answer == "2"
      puts solar_system.list_planets
    elsif user_answer == "3"
      puts "What planet do you wish to learn about?"
      planet_chosen = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet_chosen)
      if found_planet.class == String || found_planet.class == Array
        puts found_planet
      else
        puts found_planet.summary
      end
    elsif user_answer == "4"
      puts "Please give me the planet's name:"
      name = gets.chomp
      puts "Please give me the planet's color:"
      color = gets.chomp
      puts "Please give me the planet's mass in kg:"
      mass_kg = gets.chomp
      mass_kg = num_check(mass_kg)
      puts "Please give me the planet's distance from the sun in km:"
      distance_from_sun_km = gets.chomp
      distance_from_sun_km = num_check(distance_from_sun_km)
      puts "Please give me a fun fact about the planet:"
      fun_fact = gets.chomp
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
    elsif user_answer == "5"
      puts "Planet One:"
      planet_one = gets.chomp.capitalize
      puts "Planet Two:"
      planet_two = gets.chomp.capitalize
      planet_list = solar_system.list_planets
      if planet_list.include?(planet_one) && planet_list.include?(planet_two)
        planet_a = solar_system.planets.select { |planet| planet.name == planet_one  }
        planet_b = solar_system.planets.select { |planet| planet.name == planet_two  }
        puts "The distance between #{planet_one} and #{planet_two} is #{solar_system.distance_between(planet_a.reduce, planet_b.reduce)}km"
      else
        puts "One of those is not a planet!"
      end
    end
    puts "What do you want to do next?\n 1. Exit\n 2. List planets\n 3. Planet details\n 4. Add planet\n or 5. Distance between planets"
    user_answer = gets.chomp.capitalize
  end
  exit
end

main
