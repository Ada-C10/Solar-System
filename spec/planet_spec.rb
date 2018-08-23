require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'


require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Constructor' do

#wrap thing you expect to get an error into lamda/block
#handle it rather than crash program
#lambda used in code as well, not just tests
  it "will raise argument error" do
    lambda { Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')}.must_raise(ArgumentError)
  end

  it "will raise argument error" do
    lambda { Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')}.must_raise(ArgumentError)
  end
end

describe 'summary' do
  it 'will return the correct summary' do

    #Arrange
    earth = Planet.new('Earth', 'blue', 5, 1, 'life')

    #Act
    summary = earth.summary

    #Assert
    expect(summary).must_equal("At 1 km from its sun, we have planet Earth, weighing in at 5 kg. If you didn't know: life, and it's blue. Woooow!")
  end
end
