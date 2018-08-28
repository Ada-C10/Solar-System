# In this wave you will build a
# second class, SolarSystem,
# which is responsible for keeping track of a
# collection of instances of Planet
class SolarSystem
  # read only
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  # add planet to planets array
  def add_planet(planet)
    @planets << planet
  end
  # return list of planets to main
  def list_planets
    info = "Planets orbiting #{star_name}:"
    planets.each_with_index do |el,i|
      info << "\n#{i+1}.  #{el.name}"
    end
    return info
  end

  # find_planet_by_name, that takes the name of a planet
  # as a string,and returns the corresponding
  # instance of Planet
  def find_planet_by_name(p_name)
    flag = true
    planets.each do |planet|
      if planet.name.downcase == p_name.downcase
        # flag = false
        return planet.summary
      else
        flag = true
      end
    end
    if flag # re-attempt to get valid planet name
      puts "Invalid planet name entered, please enter a valid name: "
      p_name = gets.chomp
      find_planet_by_name(p_name)
    end
  end

  # find distance between 2 planets
  # !!! can't figure out how to get distance from sun values
  def distance_between(planet1, planet2)


    if planets.find_all { |planet| planet.name == planet1 }.empty? || \
       planets.find_all { |planet| planet.name == planet2 }.empty?
      puts "Invalid planet name entered, returning to main menu."
      return
    end

    p1 = planets.find_all { |planet| planet.name == planet1 }
    puts p1

    p2 = planets.select do |planet|
      if planet.name == planet2
        return planet.distance_from_sun_km
      end
    end

    # dist1 = planet1.distance_from_sun_km
    # dist2 = planet2.distance_from_sun_km
    apart = (p1 - p2).abs
    info = "#{planet1} and #{planet2} are #{apart} km apart."
    return info

  end
end


