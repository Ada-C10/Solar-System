class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    unless mass_kg > 0
      raise ArgumentError, 'Mass must be greater than zero.'
    end

    unless distance_from_sun_km > 0
      raise ArgumentError, 'Distance from Sun must be greater than zero.'
    end

    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Planet: #{@name} \n\t Color: #{@color} \n\t Mass: #{@mass_kg} \n\t Distance from Sun (km): #{@distance_from_sun_km} \n\t Fun fact: #{@fun_fact}"
  end

end
