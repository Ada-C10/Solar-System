require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

require 'pry'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  describe 'initialize method' do
    it 'takes 5 params to create an instance of a Planet' do

    end
  end
end
