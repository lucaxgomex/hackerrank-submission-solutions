--
-- Complete the 'getTotalX' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER_ARRAY a
--  2. INTEGER_ARRAY b
--

function getTotalX(a, b)
    --- YOUR CODE HERE
    factorB = 0

    for i = 1, #b do
        
    end
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local m = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local arr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(arr, tonumber(token))
end

local brr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(brr, tonumber(token))
end

local total = getTotalX(arr, brr)

fptr:write(total, "\n")

fptr:close()
