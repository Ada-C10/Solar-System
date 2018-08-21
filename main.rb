require_relative 'planet'
require_relative 'solar_system'

def main
  pluto = Planet.new("Pluto", "Green", 112.2, 34343.6,"maybe pluto isn't even really a planet!")
  puts pluto.summary

main
