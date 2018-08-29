# csv_practice_spec.rb

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'pry'

require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Checking values to make sure they are greater than zero" do
  it "Test on zero mass" do
    expect{earth = Planet.new('Earth', 'blue-green', 0 , 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  it "Test on zero distance" do
    expect{earth = Planet.new('Earth', 'blue-green', 1 , 0, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  it "Test on negative mass" do
    expect{earth = Planet.new('Earth', 'blue-green', -1 , 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  it "Test on negative distance" do
    expect{earth = Planet.new('Earth', 'blue-green', 1 , -1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  it "Test on string entered in mass" do
    expect{earth = Planet.new('Earth', 'blue-green', 'far far away' , -1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  it "Test on string entered in distance" do
    expect{earth = Planet.new('Earth', 'blue-green', 1 , 'far far away', 'Only planet known to support life')
    }.must_raise ArgumentError
  end
end

# describe
## Arrange
# sol = SolarSystem.new("Sol")
# expect(sol.name).must_equl "Sol"
# end
