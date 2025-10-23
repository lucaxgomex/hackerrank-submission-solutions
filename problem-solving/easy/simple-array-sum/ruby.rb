#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

def simpleArraySum(ar)
    i = 0
    counter = 0

    while i < ar.length do
        counter += ar[i]
        i += 1
    end
    return counter
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum(ar)

puts result

fptr.write result
fptr.write "\n"

fptr.close()
