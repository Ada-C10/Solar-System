require_relative 'planet'

class SolarSystem
  attr_reader :planets, :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end
