def print1to255
    (1..255).each {|i| print i, ", "}
end
print1to255

puts
puts "-" * 10

def oddNum1to255
    (1..255).each {|i| print i, ", " if i % 2 != 0}
end
oddNum1to255

puts
puts "-" * 10

def sum
    total = 0
    (0..255).each {|i| total += i; puts "New number: #{i}, Sum: #{total}"}
end
sum

puts
puts "-" * 10

def iterateArr
    x = [1,3,5,7,9,13]
    (0..x.length).each {|i| puts x[i]}
end
iterateArr

puts
puts "-" * 10

def findMax(arr)
    puts arr.max
end
findMax([1,2,3,-5])

puts
puts "-" * 10

def findAvg(arr)
    sum = arr.inject {|total, n| total + n}
    puts sum / arr.length
end
findAvg([2,10,3])
