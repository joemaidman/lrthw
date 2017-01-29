# Define a function called cheese_and_crackers that takes two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  # output the number of cheeses to the screen with string interpolation
  puts "You have #{cheese_count} cheeses!"
  # output the number of boxes of crackers to the screen with string interpolation
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end


puts "We can just give the function numbers directly:"
# Call the cheese_and_crackers method, passing two integer numbers
cheese_and_crackers(20,30)


puts "OR, we can use variables from our scripts:"
# Declare two variables to hold the numbers of cheese and boxes of crackers
amount_of_cheese = 10
amount_of_crackers = 50
# Call the cheese_and_crackers method, passing two variables
cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
# Call the cheese_and_crackers method, passing the result of two addition calculations
cheese_and_crackers(10 + 20, 5 + 6)

# Call the cheese_and_crackers method, passing the result of adding an integer value to the exisint value of the two holding variables
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100,amount_of_crackers + 1000)
