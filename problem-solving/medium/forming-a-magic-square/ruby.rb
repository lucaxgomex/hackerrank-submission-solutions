=begin
matrix = Array.new(3){
  Array.new(3, 0)
}

matrix[0][2] = 6

puts matrix
=end

#!/bin/ruby
require 'json'
require 'stringio'

#
# Complete the 'formingMagicSquare' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY s as parameter.
#

def formingMagicSquare(s)
  if s[1][1] != 5
    raise 'You cannot go further! This value must be 5'
  else
    # diagonal rows
    d1 = Array.new(3)
    r = 0
    
    3.times do |i|
      d1[i] = a[i][i - 1]
      r = r + d1[i]
    end
  
  
  
    d2 = Array.new(3)
    
    # vertical rows
    v1 = Array.new(3)
    v2 = Array.new(3)
    v3 = Array.new(3)
    
    puts is_even(16)

  end
end


fptr = File.open('file.txt', 'w')

s = Array.new(3)

3.times do |i|
    s[i] = gets.rstrip.split.map(&:to_i)
end

result = formingMagicSquare s

fptr.write result
fptr.write "\n"

fptr.close()