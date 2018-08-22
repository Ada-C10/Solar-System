class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass, distance, fact)
    if mass <= 0
      return raise ArgumentError, 'Mass must be larger than 0'
    end
    if distance <= 0
      return raise ArgumentError, 'Distance must be larger than 0'
    end
    @name = name.capitalize
    @color = color
    @mass_kg = mass
    @distance_from_sun_km = distance
    @fun_fact = fact
  end

  def summary
    return "#{@name}: A #{@color} colored planet that is #{@distance_from_sun_km} kilometers from its star. Fun Fact: #{@fun_fact}. Mass: #{@mass_kg} kilograms."
  end

end
