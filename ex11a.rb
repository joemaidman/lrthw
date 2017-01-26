print "How many days a week do you work? "
days_worked_pw = gets.chomp.to_i
print "How many hours a day are you working? "
hours_worked_pd = gets.chomp.to_i
print "How long is your lunch break? "
lunch = gets.chomp.to_i

puts "So, you're working #{days_worked_pw * hours_worked_pd} hours a week, or #{(days_worked_pw * hours_worked_pd) - (days_worked_pw * lunch)} hours a week if you allow for lunch breaks. No slacking please."

#gets.chomp gets input from the user and removes the new line return. chomp can be used on any string. There are actually two methods there, gets and chomp.
