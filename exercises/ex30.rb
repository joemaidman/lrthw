people = 30
cars = 40
trucks = 15


if cars > people
  puts "We should take the cars."
  # evaluates the 'elsif' below, if the 'if' isn't true
elsif cars < people
  puts "we should not take the cars."
  # evaluates the final 'else', should both the 'if' and 'elsif' above evaluate to false
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

people += 10
cars -= 20
trucks -= 15


if cars > people
  puts "We should take the cars."
  # evaluates the 'elsif' below, if the 'if' isn't true
elsif cars < people
  puts "we should not take the cars."
  # evaluates the final 'else', should both the 'if' and 'elsif' above evaluate to false
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end
