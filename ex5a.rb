# Ruby math to convert inches to cm and pounds to kgs. Have inserted the conversions into the original code.

inches_to_cm = 2.54
pounds_to_kgs = 0.453592

name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's #{height * inches_to_cm} cm tall."
puts "He's #{weight * pounds_to_kgs} kgs heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height * inches_to_cm}, and #{weight * pounds_to_kgs} I get #{age + (height * inches_to_cm) + (weight * pounds_to_kgs)}."
