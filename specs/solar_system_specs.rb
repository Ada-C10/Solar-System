require 'minitest'
require_relative '../lib/solar_system.rb'
require_relative '../lib/planets.rb'
require_relative '../lib/main.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
describe 'Check SolarSystem Methods' do
  #Arrange & act
  #assert
  #

#check if planet name is nil
#check if string is empty
#create nominal and edge cases
#test distance between method if first planet is closer than second planet
#error - raise error- mass, distance, empty array
