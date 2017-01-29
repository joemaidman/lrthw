the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
the_count. each do |number|
  puts "This is count #{number}"
end

# same as above, but in a more Ruby stlye
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style ,exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty oranges
elements = []

# then use the range operator to do 0 to 5 counts
# .. is the range operator i.e. from from 0 to 5 inclusive of the last value
# ... is the range operator as above but it excludes the last value
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  # could also do elements << i which is the same as push below
  elements.push(i)
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}

# Other array methods:
=begin

array.first / array.last
Returns the first or last element.

array.length
Number of elements.

array.empty?
Is it empty (true/false).

array.include?("Joe")
Does it include something (true/false).

array.sort!
Sort the array.

array.delete("Joe")
Delete an element.

array.pop
Remove the last element and returns it.

array.shift
Remove the first element and returns it.

array.to_h
Return the array as a hash (key/value pairs). Only available from Ruby >2.1!!

array.to_s
Returns the array as a string.

array.each {|x| print x}
Iterate over the elements

array.select {|x| x.length > 3}
Filters the array given a condition that is met (true).

array.reject {|x| x.length > 3}
Opposite of select, filters where the criteria is false

array.map {|x| x * x}
Runs the block for each element

array.inject(0) {|result, element| result + element}
The first block is an accumulator which is passed to the next iteration. At the end of the iteration, the accumulator is passed back as the result.

=end
