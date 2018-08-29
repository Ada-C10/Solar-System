class Planet

  # Instructions asked for variables to be readable but not writable
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # Constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    # if @mass_kg <= 0
    #   return "The mass of a planet cannot be less than 0!"
    # end
  end

  def summary
    return "This particular planet named #{@name.capitalize} and is #{@color} in color, has a mass of #{@mass_kg} kilograms, and is located #{@distance_from_sun_km} kilometers from the sun.  Fun fact about #{@name.capitalize}: It is #{@fun_fact.downcase}!"
  end
end
