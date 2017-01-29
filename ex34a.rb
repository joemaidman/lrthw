=begin
With what you know of the difference between these types of numbers, can you
explain why the year 2010 in "January 1, 2010," really is 2010 and not 2009?
(Hint: you can't pick years at random.)
=end
puts "Creating an array with years from year 1 to year 2017"
years_arr = Array(1..2017)
puts "Choose a year between these two to get the index of it."
puts "> "
user_year = gets.chomp.to_i
while user_year < 1 || user_year > 2017 do
puts "That year is outside of the range. Please choose a year between 1 and 2017."
user_year = gets.chomp.to_i
end
puts "The year #{user_year} has an array index of: #{years_arr.index(user_year)}"
puts "This is one less than the actual year of #{user_year}."
puts "This is because the the first year in our array is 1 and the first index of the array is 0."
puts "If our first year was 0, the array index would match the actual year."
