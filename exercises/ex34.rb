# arrays etc are cardinal i.e. the first index is zero, not one.

animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
puts animals
puts "The animal at 1."
gets #ruby
puts animals[1]
# The animal at 1 is second and is a ruby
# The second animal is at 1 and is a ruby

puts "The third (3rd) animal."
gets #peacock
puts animals[2]
# The third animal is at 2 and is a peacock
# The animal at 2 is third and is a peacock

puts "The first (1st) animal."
gets #bear
puts animals[0]
# The first animal is at 0 and is a bear
# The animal at 0 is first and is a bear

puts "The animal at 3."
gets #kangaroo
puts animals[3]
# The animal at 3 is fourth and is a kangaroo
# The fourth animal is at 3 and is a kangaroo

puts "The fifth (5th animal)."
gets  #whale
puts animals[4]
# The fifth animal is at 4 and is a whale
# The animal at 4 is fifth and is a whale

puts "The animal at 2."
gets #peacock
puts animals[2]
# The animal at 2 is third and is a peacock
# The third animal is at 2 and is a peacock

puts "The sixth (6th) animal"
gets #platypus
puts animals[5]
# The sixth animal is at 5 and is a platypus
# The animal at 5 is sixth and is a platypus

puts "The animal at 4"
gets #whale
puts animals[4]
# The animal at 4 is fifth and is a whale
# The fifth animal is at 4 and is a whale
