# Set up a variable called input_file that is given a value of the first argument passed to the script by the user
input_file = ARGV.first
# Define a function call ed print_all that takes an argument (f)
def print_all(f)
  # Output the contents of the file to the screen
  puts f.read
  # end the function
end
# Define a function called rewind that takes an argument (f)
def rewind(f)
  # Call the seek function on the f object, passing the location that you want to 'seek' to (as an integer). In this case, seek to location 0 or the start of the file
  f.seek(0)
  # end the function
end

# Define a function called print_a_line that takes two arguments
def print_a_line(line_count, f)
  # print the value of the line_count argument and then the value of the current location/line of the f object using gets.chomp
  puts "#{line_count}, #{f.gets.chomp}"
  # end the function
end
# Declare a variable called current_file and set it to a file object using the filename passed by the user
current_file = open(input_file)

puts "First, let's print the whole file:\n"
# Call the print_all function, passing the variable current_file as the argument
print_all(current_file)

puts "Now let's rewind, kind of like a tape, or craig david."
# Call the rewind function, passing the variable current_file as the argument. This function will 'seek' back to the start of the file
rewind(current_file)

puts "Let's pring three lines:"
# Declare a variable called current_line and set the value to 1
current_line = 1
# Call the print_a_line function
print_a_line(current_line,current_file)
# Increment the value of current_line so that it is now equal to 2
current_line += 1
# Call the print_a_line function again, using the updated line number
print_a_line(current_line,current_file)
# Increment the value of current_line so that it is now equal to 3
current_line += 1
# Call the print_a_line function again, using the updated line number
print_a_line(current_line,current_file)
