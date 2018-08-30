require_relative 'planet'
require 'minitest/spec' #diff syntax for writing tests
require 'minitest/autorun'
require 'minitest/reporters' #nicer display for outcome
require 'minitest/pride'

describe 'Planets' do
  it 'can call arguments correctly/check if initialize works' do
    #Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    #Act
    name = earth.name
    color = earth.color
    fun_fact = earth.fun_fact
    mass = earth.mass
    distance = earth.distance

    #Assert
    expect(name).must_equal 'Earth'
    expect(color).must_equal 'blue-green'
    expect(fun_fact).must_equal 'Only planet known to support life'
    expect(mass).must_equal 5.972e24
    expect(distance).must_equal 1.496e8

  end
  it "checks to see if mass and distance are floats" do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    result = earth.mass.class
    result2 = earth.distance.class

    expect(result).must_equal Float
    expect(result2).must_equal Float
  end
end
