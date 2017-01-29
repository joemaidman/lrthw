# While loops. Runs the block until the expression is false
# use sparingly (infinite loops!). Use a for-loop is you can
# make sure the expression actually has a change of being false at some point!

i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

#remember you can write this 2 other ways?
numbers.each {|num| puts num}
numbers.each do |num| puts num
end
