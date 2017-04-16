# This is the final room of the game where you get to choose a prize but not too much!
def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it.
  # using =~ we can test for a pattern. Can also use .match method.
  # Using the pattern /\d/ we can look for a digit character in the user input.
  if choice =~ /\d/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    # Abort the program and provide an exit code: 0 is no error, 1 is an error
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

# The room to the left
def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
  # Careful, this line creates an infinite while loop!
  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

# The room to the right
def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

# The function called when you die
def dead(why)
  # Concatenating the passed string from the argument with more text after the comma
  puts why, "Good job!"
  exit(0)
end

# A function called to start the control flow
def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end
# This is actually the first line of the program that actually runs. Everything above is declaring functions for the rooms
start
