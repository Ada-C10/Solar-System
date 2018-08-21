require_relative 'planet'

def main
  #... Do stuff with planets ..
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  saturn = Planet.new('Saturn','rust',5.683e26,1.433e9,"Saturn has at least 53 moons, 9 moons awaiting confirmation")
  puts earth.name
  puts earth.color
  puts saturn.name
  puts saturn.color
  puts earth.summary
  puts saturn.summary

  earth = Planet.new('Earth', 'blue-green', -5.972e24, 1.496e8, 'Only planet known to support life')
end

main
