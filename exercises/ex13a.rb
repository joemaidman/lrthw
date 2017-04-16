number_1, number_2, number_3, number_4 = ARGV

puts "Your first number is: #{number_1.to_i}"
puts "Your second number is: #{number_2.to_i}"
puts "Your third number is: #{number_3.to_i}"
puts "Your fourth number is: #{number_4.to_i}"
puts "The sum of your numbers is: #{number_1.to_i + number_2.to_i + number_3.to_i + number_4.to_i}"
puts "The product of your numbers is: #{number_1.to_i * number_2.to_i * number_3.to_i * number_4.to_i}"
puts "How was my math out of 10?"

# score = gets.chomp This didn't work as gets.chomp does not like ARGV
score = $stdin.gets.chomp
puts "You scored my math #{score} out of ten!"
