require_relative 'planet'


require 'minitest'
require 'minitest/spec' #this givest the describe and it style
require 'minitest/autorun' #always use it
require 'minitest/reporters' #how we can get better info printed to terminal wehn the test is finsihed
require 'minitest/pride'
require 'minitest/skip_dsl'
require 'pry'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
#this whole line above is modules with classes in them # use the specreporter code and print that to the screen

describe 'Planet Test' do
  it 'Tests if 0 is a valid mass' do
    expect{earth = Planet.new("Earth", "green", 0, 3, "its round")}.must_raise ArgumentError
  end

  it 'Tests if 0 is a valid distance from sun' do
    expect{saturn = Planet.new("Earth", "green", 23, 0, "its flat")}.must_raise ArgumentError
  end

  it 'Tests if mass is a Numeric' do
    expect{saturn = Planet.new("Earth", "green", "super heavy", 0, "its flat")}.must_raise ArgumentError
  end

  it 'Tests if distance from sun is a Numeric' do
    expect{saturn = Planet.new("Earth", "green", 22, "far far away", "its flat")}.must_raise ArgumentError
  end
end
