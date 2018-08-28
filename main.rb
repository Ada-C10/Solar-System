require_relative 'planet.rb'
require_relative 'solar_system.rb'

def new_planet
  puts "\nOK, let's get some details for this new planet you wish to add to our solar system..."
  puts "What is the name of the planet?"
  name = gets.chomp.capitalize
  puts "I see... What is the color of #{name}?"
  color = gets.chomp.capitalize
  puts "And what is the mass in kg of #{name}?"
  mass_kg = gets.chomp
  puts "What is #{name}'s distance from the sun in km?"
  distance_from_sun_km = gets.chomp
  puts "Pls tell me a fun fact about planet #{name}:"
  fun_fact = gets.chomp.capitalize

  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

  return new_planet
end


def main

  mercury = Planet.new('Mercury', 'Dark Gray', '328500000000000000000000', '57910000', 'Several times per year, from the perspective of Earth, Mercury appears to be moving backward through the sky; this is the sole reason that things go wrong in my life')

  venus = Planet.new('Venus', 'Pale Yellow', '4867000000000000000000000', '108200000', 'Venus is the name of the women\'s razors division of The Gillette Company')

  earth = Planet.new('Earth', 'Blue', '5972000000000000000000000', '149600000', 'Overall a total shithole, but occasionally produces decent works of art; inhabitants seem generally unaware that rest of universe exists')

  mars = Planet.new('Mars', 'Red', '639000000000000000000000', '227900000', 'Some scientists postulate that humanity actually originated on Mars and was clandestinely transported to Earth with our memories wiped after we destroyed the entire planet in a nuclear holocaust')

  jupiter = Planet.new('Jupiter', 'Orange and White', '1898000000000000000000000000', '778500000', 'Has a terrifying red eyeball eternally staring down the rest of the solar system')

  saturn = Planet.new('Saturn', 'Pale Gold', '568300000000000000000000000', '1433000000', 'Saturn\'s rings are home to an Intergalactic Council that secretly governs all affairs in our solar system')

  uranus = Planet.new('Uranus', 'Pale Blue', '86810000000000000000000000', '2871000000', 'Uranus was officially discovered by Sir William Herschel in 1781')

  neptune = Planet.new('Neptune', 'Pale Blue', '102400000000000000000000000', '4495000000', 'Neptune\'s Spatula was episode 19b of season 1 of the acclaimed children\'s television show SpongeBob Squarepants')

  pluto = Planet.new('Pluto', 'Light Brown', '13100000000000000000000', '5906292480', 'Not actually considered a full-fledged planet at this time; presently downgraded to "Dwarf Planet" status')

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  solar_system.add_planet(pluto)




  keep_going = true

  while keep_going == true
    puts "What would you like to do? options are: LIST PLANETS, PLANET DETAILS, ADD PLANET, DISTANCE and EXIT"
    user_input = gets.chomp

    case user_input.upcase
    when "EXIT"
      keep_going = false

    when "LIST PLANETS"
      puts solar_system.list_planets

    when "PLANET DETAILS"
      puts "\nWhich planet would you like to know more about?"
      planet = gets.chomp.downcase

      if solar_system.find_planet_by_name(planet)
        puts solar_system.find_planet_by_name(planet).summary
      else
        puts "\nSorry, we couldn't find your planet :(\n"
      end

    when "ADD PLANET"
      begin
        solar_system.add_planet(new_planet)

      rescue ArgumentError
        puts "\nOmg it looks like your value(s) for mass and/or distance from the sun weren't positive numbers. Please try again with values greater than zero! :))\n"

      end

    when "DISTANCE"
      begin
        solar_system.distance_between

      rescue
        puts "\noh god, i dont think that was the name of an actual planet that u just typed..... at least one of those was... just plain wrong.. care 2 try again ?"

      end

    else
      begin

        raise ArgumentError.new

      rescue ArgumentError
        puts "\nomg WHAT did u type?? idek what that means! what planet r u even from??? let's ... idk lets just put this all behind us n start over... ok ?\n\n"

      end

    end

  end

end

main
