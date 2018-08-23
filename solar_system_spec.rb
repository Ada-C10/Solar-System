require_relative 'solar_system.rb'
require_relative 'planet.rb'
require 'pry'
require 'minitest/autorun'
require 'minitest/reporters'
require 'faker'

describe 'SolarSystem' do

  it 'creates an instance of the Solar System class' do
    #Arrange
    name = 'Center'

    #Act
    new_system = SolarSystem.new(name)

    #Assert
    expect(new_system.class).must_equal SolarSystem


  end

  it 'adds planets to a planet array' do
    #Arrange
    name = 'Alpha'
    color = 'green'
    mass = 5.3e23
    distance = 4.3e6
    fact = 'Alpha is a new planet'
    test_planet = Planet.new(name, color, mass, distance, fact)

    system_name = 'Center'
    new_system = SolarSystem.new(name)

    #Act
    5.times do
      new_system.add_planet(test_planet)
    end

    #Assert
    expect(new_system.planets.length).must_equal 5


  end

  it 'returns a planet list of String type' do
    #Arrange
    new_system = SolarSystem.new(Faker::FunnyName.name)

    5.times do
      test_planet = Planet.new(Faker::RuPaul.queen,
         Faker::Color.color_name,
         Faker::Number.positive, Faker::Number.positive,
         Faker::RuPaul.quote)
      new_system.add_planet(test_planet)
    end

    #Act
    output = new_system.list_planets

    #Assert
    expect(output.class).must_equal String

  end

  it 'finds a planet by name' do
    #Arrange
    new_system = SolarSystem.new(Faker::FunnyName.name)

    5.times do
      test_planet = Planet.new(Faker::RuPaul.queen,
         Faker::Color.color_name,
         Faker::Number.positive, Faker::Number.positive,
         Faker::RuPaul.quote)
      new_system.add_planet(test_planet)
    end

    wanted_planet = Planet.new('This one', Faker::Color.color_name,
      Faker::Number.positive, Faker::Number.positive,
      Faker::RuPaul.quote)
    new_system.add_planet(wanted_planet)

    #Act
    found_planet = new_system.find_planet_by_name('This one')

    #Assert
    expect(found_planet).must_equal wanted_planet

  end


  it 'raises an error if the planet is not found in the array' do
    #Arrange
    new_system = SolarSystem.new(Faker::FunnyName.name)

    5.times do
      test_planet = Planet.new(Faker::RuPaul.queen,
         Faker::Color.color_name,
         Faker::Number.positive, Faker::Number.positive,
         Faker::RuPaul.quote)
      new_system.add_planet(test_planet)
    end

    #Act-Assert
    expect{
      new_system.find_planet_by_name('This planet is definitely not there')
    }.must_raise ArgumentError

  end

  it 'calculates the distance between planets' do
    #Arrange
    new_system = SolarSystem.new(Faker::FunnyName.name)
    test_planet_1 = Planet.new('Whatevs', 'green', 5.6e6, 500, 'cool stuff')
    test_planet_2 = Planet.new('Totally', 'blue', 44.3e3, 200, 'more cool stuff')
    new_system.add_planet(test_planet_1)
    new_system.add_planet(test_planet_2)

    #Act
    result = new_system.distance_between('whatevs', 'totally')

    #Assert
    expect(result).must_equal 300

  end









end
