=begin
matrix = Array.new(3){
  Array.new(3, 0)
}

matrix[0][2] = 6

puts matrix


   d1 = Array.new(3)

    
    3.times do |i|
      d1[i] = a[i][i - 1]
      r = r + d1[i]
    end
  
    puts is_even(16)
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
#

def diagonalCalculation(i, j):
end

def formingMagicSquare(s)
  d1 = s[0][0] + s[1][1] + s[2][2]
  d2 = s[2][0] + s[1][1] + s[0][2]

  h1 = s[0][0] + s[0][1] + s[0][2]
  h2 = s[1][0] + s[1][1] + s[1][2]
  h3 = s[2][0] + s[2][1] + s[2][2]

  cost = 0

  if s[1][1] != 5 then
    raise 'You cannot go further! This value must be 5'
  else
    if d1 < 15 then
      cost = 15 - d1     
      
      if s[0][0].odd? == true then
        s[0][0] += cost   
      elsif a[2][2].odd? == true then
        s[2][2] += cost
      end
        
    else
      cost = d1 - 15
    end

    if d2 < 15 then
      cost = 15 - d2
    else
      cost = d2 - 15
    end
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