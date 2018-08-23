require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  puts earth.color

  mars = Planet.new('Mars', 'red', 6.39e23, 227.9, 'Fun fact about Mars')
  puts mars.name
  puts mars.color

end

main
