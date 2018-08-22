require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/main'

require 'pry'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Main' do
  describe 'main method' do
    it 'displays a list of the planets created' do

    end
  end
end
