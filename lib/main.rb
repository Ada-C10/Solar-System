require_relative 'planets.rb'
#name, color, mass_kg, distance_from_sun_km, , fun_fact
def main
mercury = Planet.new("Mercury","gray", 3.3e23, 57909227, 'Your weight on Mercury would be 38% of your weight on Earth.' )
venus = Planet.new("Venus","pale yellow", 4.87e24, 108209475, 'A day on Venus would take 117 Earth Days')
earth = Planet.new("Earth","blue/green", 5.97e24, 149598262.24, 'Earth is the only planet not named after a god.')
  puts mercury.planet_summary

  puts venus.planet_summary
  
  puts earth.planet_summary
end

main
