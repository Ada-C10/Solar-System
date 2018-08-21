require_relative 'planet'

def main

  mercury = Planet.new('Mercury', 'gray-brown', 0.330e24, 57.9e6, 'closest planet to sun')
  puts mercury.summary
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

  mercury

end

this = main
print this
