#Arrays
An indexed collection of related items

- Denoted by square brackets [], separated by commas. Negative index access in reverse order
- Mutable, can mix data types within one array. Can be nested.

######Example:

> names = ["Joe","Sally"]  
> names[0]  
=> "Joe"  

 ######Example:

> empty_array = []  
=> []  
> another_empty_array = Array.new  
=> []  

######Example:

> names << "Bob"  
=> ["Joe","Sally","Bob"]  

##Methods

array.first / array.last
######Returns the first or last element.

array.length
######Number of elements.

array.empty?
######Is it empty (true/false).

array.include?("Joe")
######Does it include something (true/false).

array.sort!
######Sort the array.

array.delete("Joe")
######Delete an element.

array.pop
######Remove the last element and returns it.

array.shift
######Remove the first element and returns it.

array.to_h
######Return the array as a hash (key/value pairs). Only available from Ruby >2.1!!

array.to_s
######Returns the array as a string.

array.each {|x| print x}
######Iterate over the elements

array.select {|x| x.length > 3}
######Filters the array given a condition that is met (true).

array.reject {|x| x.length > 3}
######Opposite of select, filters where the criteria is false

array.map {|x| x * x}
######Runs the block for each element

array.inject(0) {|result, element| result + element}
######The first block is an accumulator which is passed to the next iteration. At the end of the iteration, the accumulator is passed back as the result.
