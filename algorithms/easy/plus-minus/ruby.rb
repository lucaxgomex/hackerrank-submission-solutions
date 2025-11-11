=begin
my_array = ["apple", "banana", "cherry"]

my_array.each_with_index do |item, index|
  puts "Item at index #{index}: #{item}"
end
=end

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr, size)
  r = []
  p = 0
  n = 0
  z = 0

  arr.each do |item|
    if item > 0 then
      p += 1
    elsif item < 0 then
      n += 1
    else
      z += 1
    end
  end

  r.push(p, n, z)

  displayResult(r, size)
end

def displayResult(r, size)
  r.each do |item| 
    puts Float(item) / size
  end
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus(arr, n)