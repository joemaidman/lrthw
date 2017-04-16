puts "You enter a dark room with three doors. Do you go through door #1, #2 or #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "the bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The beats eats your legs off. Good job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survices powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

elsif door == "3"
  puts "There are four men standing in front of you. \"How you like the doors?\", they say in unison."
  puts "Who do you want to talk to?"
  puts "1. Jim"
  puts "2. Ray"
  puts "3. Robby"
  puts "4. John"

  print "> "
  member = $stdin.gets.chomp

  if member == "1"
    puts "Come on baby light my fire. Good job!"
  elsif member == "2"
    puts "I played on every track of all eight of our albums. Good job!"
  elsif member == "3"
    puts "I joined in 1965 after Ray's brother left. Good job!"
  else
    puts "I got more than rhythm. I can act and dance too! Good job!"
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
