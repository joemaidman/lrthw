# While loops. Runs the block until the expression is false
# use sparingly (infinite loops!). Use a for-loop is you can
# make sure the expression actually has a change of being false at some point!
def my_custom_while(the_max, the_increment)
  i = 0
  numbers = []
  while i < the_max
    puts "At the top i is #{i}"
    numbers.push(i)
    i += the_increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  return numbers
end

x = 10
x_inc = 2
puts "The numbers up to #{x} with increments of: #{x_inc} "
numbers = my_custom_while(x, x_inc)
numbers.each do |num| puts num
end

y = 50
y_inc = 5
puts "The numbers up to #{y} with increments of: #{y_inc} "
numbers = my_custom_while(y, y_inc)
numbers.each do |num| puts num
end
