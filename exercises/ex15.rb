# Creates a variable called filename that is assigned a value that is the first of the input arguments ARGV
filename = ARGV.first
# Creates a variable called txt that is set to a stream/object of the file we want to open
txt = open(filename)
# Outputs the name of the file that the user passed to the script
puts "Here's your file #{filename}:"
# prints the contents of the file to the screen
print txt.read
# Close the file
txt.close
# Asks the user for another file name
print "Type the filename again: "
# Create a new variable called file_again that is assigned a value that is obtained from the user with ¢stdin.gets.chomp
file_again = $stdin.gets.chomp
# Create a new variable called txt_again that is set to a stream/object of the second file we want to open
txt_again = open(file_again)
# Read the contents of the second file and print them to the screen
print txt_again.read
# Close the file
txt_again.close
