# While loops. Runs the block until the expression is false
# use sparingly (infinite loops!). Use a for-loop is you can
# make sure the expression actually has a change of being false at some point!
def my_custom_while_with_range_op(the_max, the_increment)
  numbers = []
  (0..the_max).step(the_increment).each do |i|
    puts "At the top i is #{i}"
    numbers.push(i)
    i += the_increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  return numbers
end

def my_custom_while_with_for_loop(the_max, the_increment)
  numbers = []
  for i in (0..the_max).step(the_increment)
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
numbers = my_custom_while_with_range_op(x, x_inc)
numbers.each do |num| puts num
end

y = 50
y_inc = 5
puts "The numbers up to #{y} with increments of: #{y_inc} "
numbers = my_custom_while_with_for_loop(y, y_inc)
numbers.each do |num| puts num
end
