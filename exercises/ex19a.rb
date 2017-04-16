def apples_and_oranges(number_of_apples, number_of_oranges)
  puts "You have #{number_of_apples} apples."
  puts "You have #{number_of_oranges} of oranges."
  puts "But we can't really compare them, can we?"
  puts "Where's my juicer?\n"
end


puts "We can just give the function numbers directly:"
apples_and_oranges(20,30)

puts "OR, we can use variables from our scripts:"
apples = 10
oranges = 50
apples_and_oranges(apples, oranges)

puts "We can even do math inside too:"
apples_and_oranges(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
apples_and_oranges(apples + 100, oranges + 1000)

puts "Even more maths, division"
apples_and_oranges(apples / 2, oranges / 2)

puts "Even more maths, multiplication"
apples_and_oranges(apples * 100, oranges * 1000)

puts "Even more maths, mixing operations"
apples_and_oranges(apples - 1, oranges + 2)

additional_apples  = 5

puts "Add variables together"
apples_and_oranges(apples + additional_apples, oranges)

bad_apples = 2

puts "Add and subtract variables"
apples_and_oranges(apples + additional_apples - bad_apples, oranges)

bad_oranges = 5

puts "Add more"
apples_and_oranges(apples + additional_apples - bad_apples, oranges - bad_oranges)
