require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.41693e23, 2.2279e8, 'Second smallest planet in the solar system')

  puts earth.summary
  puts mars.summary
end

main
