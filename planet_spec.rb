require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

describe 'initialize' do
  it "will return false if not a number" do
    #Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    #Act

    #Assert
    #'initialize' method will raise exception
    expect().wont_equal true
  end
  it "will return error if not greater than zero" do
  end

end
