require_relative 'planet.rb'
def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8,
    'Only planet known to support life')
  puts earth.name
  puts earth.color
  puts earth.summary

  venus = Planet.new('Venus', 'red', -3.7848, 2.43869,
    'Evening Star')
  puts venus.color
  puts venus.fun_fact
  puts venus.summary

end
main
