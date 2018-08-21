# main.rb
require_relative 'planet'

def main
  mercury = Planet.new("Mercury", "grey", 3.3011e23, 5.79e7, "is named after a Roman God")

  venus = Planet.new("Venus", "yellowish-white", 4.87e24, 1.082e8, "may have had oceans in the past")

  puts "#{mercury.name} #{mercury.fun_fact}."

  puts "#{venus.name} #{venus.fun_fact}."
end

main
