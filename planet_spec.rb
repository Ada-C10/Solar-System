require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet Method' do
  describe 'initialize' do
    it 'returns an instance of planet object' do
      # Arrange & Act
      star_1 = Planet.new('star_1','white', 100000, 40000, 'water-ice on surface')

      # Assert
      expect(star_1.class).must_equal Planet

    end
    it 'returns the right values' do
      # Arrange & Act
      star_1 = Planet.new('star_1','white', 100000, 40000, 'water-ice on surface')

      # Assert
      expect(star_1.name).must_equal 'star_1'
      expect(star_1.color).must_equal 'white'
      expect(star_1.mass_kg).must_equal 100000
      expect(star_1.distance_from_sun_km).must_equal 40000
      expect(star_1.fun_fact).must_equal 'water-ice on surface'
    end
    it 'raises an ArgumentError for invalid mass_kg input' do
      # Arrange & Act
      star_2 = Planet.new('star_2','white', 500, 40000, 'water-ice on surface')

      # Assert
      expect(star_2.name).must_equal 'star_2'
      expect(star_2.color).must_equal 'white'
      expect(star_2.mass_kg).must_equal 500
      expect(star_2.distance_from_sun_km).must_equal 40000
      expect(star_2.fun_fact).must_equal 'water-ice on surface'

      # reArrange, Act and Assert

      expect{
        star_2 = Planet.new('star_2','white', 0, 40000, 'water-ice on surface')
      }.must_raise ArgumentError

    end

    it 'raises an ArgumentError for invalid distance_from_sun_km input' do
      # Arrange & Act
      star_3 = Planet.new('star_3','', 500, 40000, 'water-ice on surface')

      # Assert
      expect(star_3.name).must_equal 'star_3'
      expect(star_3.color).must_equal ''
      expect(star_3.mass_kg).must_equal 500
      expect(star_3.distance_from_sun_km).must_equal 40000
      expect(star_3.fun_fact).must_equal 'water-ice on surface'

      # reArrange, Act and Assert

      expect { star_3 =Planet.new('star_3','', 500, 0, 'water-ice on surface')
      }.must_raise ArgumentError

    end

  end

  describe 'summary' do
    it 'returns a string' do
      # Arrange
      star_1 = Planet.new('star_1','white', 100000, 40000, 'water-ice on surface')
      # Act
      result = star_1.summary
      # Assert
      expect(result.class).must_equal String

    end
    it 'returns a right value' do
      # Arrange
      star_1 = Planet.new('star_1','white', 100000, 40000, 'water-ice on surface')
      # Act
      result = star_1.summary
      # Assert
      expect(result).must_equal "Name: star_1 Color: white mass_kg: 100000 distance_from_sun_km: 40000 fun_fact: water-ice on surface"
    end


  end
end
