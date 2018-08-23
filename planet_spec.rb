require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

Minitest::Reporters.use!

describe 'planet' do
    it "will creat an instance of a planet" do # nominal case
      # Arrange # Act 
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      # Assert
      expect(earth.name).must_equal 'Earth'
      expect(earth.fun_fact).must_equal 'Only planet known to support life'
    end
    it "will return Argument Error if mass or distance is 0 or less." do
        expect {Planet.new('New', 'grey', 0, 5.791e8, "Random fun fact.")
        }.must_raise ArgumentError

        expect{Planet.new('New', 'grey', 5.791e8, 0, "Random fun fact.")
        }.must_raise ArgumentError
    end

end
