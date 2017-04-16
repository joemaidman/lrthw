ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."
# ten_things.split(' ') is split(ten_things) with a space delimiter
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure ther's 10 items

while stuff.length != 10
  # more_stuff.pop is pop(more_stuff)
  # Call pop on more_stuff
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  # stuff.push is push(stuff)
  # Call push with stuff
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."
# stuff[1] is get the second element of the array at index 1
puts stuff[1]
# stuff[-1] is get the second last element of the array at index of last index -1
puts stuff[-1] # whoa! fancy
# stuff.pop is pop(stuff)
# Call pop with stuff
puts stuff.pop()
# stuff.join(' ') is join(stuff) with a space
puts stuff.join(' ')
# stuff[3..5].join("#") is join(stuff[3..5]) with a #
puts stuff[3..5].join("#")

=begin
#REAL EXAMPLES FOR ARRAYS
=> Simple shopping list
=> Names on a register
=> Makes of car
=> Countries of the world
=> Cities of a country
=> Days of the week
=> Months of the year
=> Planets in the solar system
=> Breeds of dog
=> Letters of the alphabet

=end
