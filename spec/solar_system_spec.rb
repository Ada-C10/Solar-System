gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/main'


describe "Solar System methods" do

  describe "initialize" do
    it "should create new instance of Solar System" do
      #arrange
      "zorgos"

      #act
      zorgos = SolarSystem.new("Zorgos")

      #assert
      expect(zorgos.star_name).must_equal "Zorgos"
      expect(zorgos.is_a? SolarSystem).must_equal true
    end
  end

  describe "add_planet" do

    it "should take an instance of planet and add it to array of planets" do

      #arrange
      zorgos = SolarSystem.new("Zorgos")
      zorg = Planet.new("Zorg", "Gross Green", 100, 4, "Not a real planet")

      #act
      zorgos.planets << zorg.name

      #assert
      expect(zorgos.planets).must_equal ["Zorg"]
    end
  end

  describe "list_planets" do

    it "should return a list of planets from an array" do

      #arrange
      zorgos = SolarSystem.new("Zorgos")
      zorgos.planets = ["Zorg", "Zippo", "Whammo"]

      #act
      def list_planets
        planet_list = ""
        i = 1

        @planets.each do |planet|
          planet_list += "\n#{i}. #{planet}"
          i += 1
        end
        return "Planets orbiting #{@star_name} #{planet_list}"
      end

      #assert
      expect(zorgos.list_planets).must_equal "Planets orbiting Zorgos \n1. Zorg \n2. Zippo \n3. Whammo"
    end
  end

  describe "find_planet_by_name" do
    it "finds inputted planet name in solar system and returns planet data" do
      #arrange
      zorgos = SolarSystem.new("Zorgos")
      zorg = Planet.new("Zorg", "Gross Green", 100, 4, "Not a real planet")
      zorgos.planets = ["Zorg", "Zippo", "Whammo"]

      #act
      def find_planet_by_name(planet_name)
        @planet.each do |planet|
          if planet.name.casecmp && planet_name == 0
            return planet
          else
            return "No such planet found orbiting #{@star_name}"
          end
        end
    end
      #act
      planet_info = zorgos.find_planet_by_name("Zorg")

      #assert
      expect(planet_info).must_equal zorg
    end
end
