people = 20
cats = 30
dogs = 15

# The if statment evaluates the condition that follows it to determine
# whether it is true or false. If it is true, it executes the code after the condition,
# as far as the end keyword.
if people < cats
  # Indenting dosen't impact how the code runs but it is a pain to read
  # without them!
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs +=5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end

puts "It seems to be raining cats and dogs."
dogs += 5000
cats += 10000

if people < dogs && people < cats
  puts "Now people are seriously outnumbered here! There are #{cats} cats and #{dogs} dogs! Run for your life!!!"
end
