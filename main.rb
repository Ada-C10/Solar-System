require_relative 'planet'

def main
  neptune = Planet.new('Neptune', 'blue', 1050.9318, 2.793e10, 'farthest known planet from the Sun in the Solar System')
  puts neptune.fun_fact
  puts neptune.color
  puts neptune.summary

  saturn = Planet.new('Saturn', 'yellowish-brown', 5.6834e26, 1433449370, 'famous for rings')
  puts saturn.fun_fact
  puts saturn.color
  puts saturn.summary
end

main
