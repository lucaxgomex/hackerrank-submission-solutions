#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
  d1 = 0
  d2 = 0
  x = arr.length

  for i in 0..arr.length do
    for j in 0..arr.length do
      if i == j then
        d1 += arr[i][j]
      end
      
      #while x >= 0 do
      #  d2 += arr[x][j]
      #  x -= 1
      #end
    end
  end 

  puts (d1 - d2).abs
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('file.txt', 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
