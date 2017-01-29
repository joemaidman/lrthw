def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end


puts "Let's do some math with just function!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzze for the extra credit, type it in anyway
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

def puzzle_result(a, b, c, d)

  # Steps:
  # -> (35 + (74 - (180 * (50 / 2))))
  # -> (35 + (74 - (180 * (25))))
  # -> (35 + (74 - (4500)))
  # -> 35 + (-4426)
  # -> -4391
  return (a + (b - (c * (d / 2))))
end
puzzle_answer = puzzle_result(age,height,weight,iq)

puts "Yes I can, here is the answer to your riddle using a new formula: #{puzzle_answer}"
