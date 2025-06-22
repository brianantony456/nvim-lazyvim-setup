require 'spec'
require_relative '../script'

def test_add_numbers
  result = add_numbers(2, 3)
  raise "Expected 5, got #{result}" unless result == 5
end
