# Creates a variable called filename that is assigned a value that is the first of the input arguments ARGV
filename = ARGV.first
# Creates a variable called txt that is set to a stream/object of the file we want to open
txt = open(filename)
# Outputs the name of the file that the user passed to the script
puts "Here's your file #{filename}:"
# prints the contents of the file to the screen
puts txt.read
# Close the file
txt.close
puts "What a great read!"
