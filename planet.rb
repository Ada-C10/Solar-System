class Planet

attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

def initialize(name, color, mass, distance, fact)
  @name = name
  @color = color
  @mass_kg = mass
  @distance_from_sun_km = distance
  @fun_fact = fact
end

def summary
  return "#{@name}: A #{@color} colored planet that is #{@distance_from_sun_km} kilometers from the sun. Fun Fact: #{@fun_fact}. Mass: #{@mass_kg} kilograms`"
end

end
