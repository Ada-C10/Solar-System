class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new("mass_kg must be a number greater than zero") if mass_kg <= 0
    raise ArgumentError.new("distance_from_sun_km must be a number greater than zero") if distance_from_sun_km <= 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{self.name} is #{self.color} and weighs #{self.mass_kg} and is #{self.distance_from_sun_km} from the sun. Fun Fact: #{self.fun_fact}"
  end

end

#tests the ArgumentError option :)
#bad_planet = Planet.new("Earth", 'blue-green', 0, -9, 'Only planet known to support life')
