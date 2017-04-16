# Create a variable called cars and asign it a value of 100
cars = 100
# Create a variable called space_in_a_car and asign it a floating point value of 4.0
space_in_a_car = 4.0
# Create a variable called drivers and asign it a value of 30
drivers = 30
# Create a variable called passengers and asign it a value of 90
passengers = 90
# Create a variable called cars_not_driven and set it equal to the result of the variable cars minus the value of the variable drivers
cars_not_driven = cars - drivers
# Create a variable called cars_driven and set it equal to the value of the variable drivers
cars_driven = drivers
# Create a variable called carpool_capacity and set it equal to the value of the variable cars_driven multiplied by the value of the variable space_in_a_car
carpool_capacity = cars_driven * space_in_a_car
# Create a variable called average_passengers_per_car and set it equal to the value of the variable passengers divided by the value of the variable cars_driven
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
