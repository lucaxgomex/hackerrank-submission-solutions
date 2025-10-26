#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'aVeryBigSum' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER_ARRAY ar as parameter.
#

def aVeryBigSum(ar)
  r = 0

  for i in 0..(ar.length - 1) do
    r += ar[i]
  end

  return r
end

#fptr = File.open('file.txt', 'w')
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = aVeryBigSum ar
puts result

fptr.write result
fptr.write "\n"

fptr.close()