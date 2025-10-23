#!/bin/ruby

def solveMeFirst (a, b)
    if a <= 1 || b >= 10000 then
        raise 'This is not according to the constraints'
    else
        return a + b
    end
end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)

print(sum)