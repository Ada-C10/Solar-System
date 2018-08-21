require_relative 'planet'

def main
  earth = Planet.new("Earth", "blue", 0, "149.6 million", "the third planet from the sun")
  saturn = Planet.new("Saturn", "grey", "5.683 × 10^26", "1.43 billion", "the least dense planet in the solar system")
  puts "Earth is #{earth.fun_fact}, while Saturn is #{saturn.fun_fact}"
  saturn.summary
end

puts main
