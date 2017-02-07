
def chose_right_wire(seconds, wire, wires_hash)
  print "The bulb above the #{wires_hash[wire]} wire flickers then goes out. You breathe a sigh of relief.."
  puts "Your radio crackles again....\"only #{seconds} seconds to go John!\n\""
  wires_hash.delete(wire)
end

def boom
  puts "The bomb detonates, destroying the building and all inside."
end
puts File.read("dh_logo.txt")
puts "\n"
puts "Your radio crackles....\"Only 60 seconds until she blows John\"."
puts "\"Thanks Powell\", you reply."
puts "There's a suitcase in front of you. What do you do?"
puts "1. Open the briefcase."
puts "2. Run out of the room screaming."

suitcase = $stdin.gets.chomp

if suitcase == "1"
  wires_hash = {"1" => "Blue", "2" => "Red", "3" => "Yellow"}
  print "One side of the case is packed with C4 explosives. The other has a ticking clock and a series of wires."
  puts "You notice that a letter falls out: \"Hi John, I'm sorry it had to come to this. I was only after the money. Remember your favourite language. I won't forget you will I? Good luck. Hans ;)  \" "
  print "\nRefocusing on the job in hand, you see there is a red, a blue and a yellow wire."
  puts "There is also an illuminated bulb above each wire."
  puts "Which do you cut first?"
  puts "1. Blue."
  puts "2. Red."
  puts "3. Yellow."

  puts "> "
  wire = $stdin.gets.chomp

  if wire == "2"
    chose_right_wire(30,wire, wires_hash)
    puts "There are two wires left to cut. Which do you cut next?"
    wires_hash.each {|key, value|
    puts "#{key}: #{value}."}
    puts "> "
    wire_second = $stdin.gets.chomp

      if wire_second == "1"
        chose_right_wire(15,wire_second, wires_hash)
        puts "There is only one wire left to cut. You slowly cut the #{wires_hash.values[0]} wire and hold your breathe..."
        print "The final light goes out and you hear cheers over the radio as Powell realises you have defused the bomb with only seconds to spare."
        puts "You return to a hero's welcome, get a promotion and never put yourself in harms way again. Yeah right..."
      else
        boom()
      end

  elsif wire == "3" || wire == "1"
    boom()
  end

else
print "As you launch yourself out of the main entrance to the builing, the bomb detonates turning the building into a towering inferno."
puts "None of the hostages survive."
puts "While those around you tell you it wasn't your fault, you punish yourself over the coming weeks and months until you can't take the guilt anymore and through yourself off the Vincent Thomas Bridge."
puts "\nYour funeral was poorly attended. I guess dying wasn't so hard."
end
