require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It\'s the only planet known to support life')
  puts earth.name
  puts earth.color
  
  venus = Planet.new('Venus', 'yellowish white', 4.867e24, 6.724e7, 'It\'s the second brightest object in the night sky after the Moon')
  puts venus.name
  puts venus.color
end

main
