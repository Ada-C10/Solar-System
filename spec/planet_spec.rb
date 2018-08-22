gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/planet'

describe "Planets Class Methods" do

  describe "Initialize" do

      it "should error if initialized with numbers lesser than 0" do
        #arrange
        zorg = Planet.new("Zorg", "Gross Green", -100, 4, "Not a real planet")

        #act/assert
        expect{
          zorg = Planet.new("Zorg", "Gross Green", -100, 4, "Not a real planet")
        }.must_raise ArgumentError
      end

      it "should create new instance of Planet class" do
        #arrange
        zorg = ""

        #act
        zorg = Planet.new("Zorg", "Gross Green", 100, 4, "Not a real planet.")

        #assert
        expect(zorg.name).must_equal "Zorg"
        expect(zorg.color).must_equal "Gross Green"
        expect(zorg.mass_kg).must_equal 100
        expect(zorg.distance_from_sun_km).must_equal 4
        expect(zorg.fun_fact).must_equal "Not a real planet."
        expect(zorg.is_a? Planet).must_equal true 
      end
  end

  describe "Summary" do

    it "should return summary of planet in a string" do

    #arrange
    zorg = Planet.new("Zorg", "Gross Green", 100, 4, "Not a real planet.")

    #act
    def summary
      return "#{@name}: color is #{@color}; mass in kilograms is #{@mass_kg}; distance from the sun is #{@distance_from_sun_km}. \nDid you know? #{@fun_fact}"
    end

    #assert
    expect (zorg.summary).must_equal "Zorg: color is Gross Green; mass in kilograms is 100; distance from the sun is 4. \nDid you know? Not a real planet."
    end
  end

end
