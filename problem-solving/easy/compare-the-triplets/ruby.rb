require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
  alice = 0
  bob = 0
  r = []

  for i in 0..(3 - 1) do
    if a[i] > b[i] then
      alice += 1
    end

    if a[i] < b[i] then
      bob += 1
    end
  end

  r.push(alice, bob)
  return r
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')
#fptr = File.open('file.txt', 'w')

r = ""

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets(a, b)

for i in 0..result.length do
  if i == result.length then
    r += "#{result[i]}"
  end
  r += "#{result[i]} "
end

print "#{r}\n"

fptr.write result.join " "
fptr.write "\n"

fptr.close()
