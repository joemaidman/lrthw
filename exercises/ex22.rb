# STRING BASICS
# '  ' => single quotes for string literal. What you see is what you write. Dosen't allow interpolation
# "  " => double quotes for strings when using interpolation.
# """ => another string literal.
# puts => output something to the screen with a new line at the end
# #{ something } => used to interploate something into a string e.g. 2 + 2 insde the { } will insert '4' into the string
# print => like puts but dosen't put a line break at the end
# %Q{ } => interpolated string
# %q{ } => string literal
# # => a comment

# MATH AND EQUALITY
# + does addition
# - does subtraction
# / does division
# * does multiplication
# % does modulus (remainder)
# < does less than
# > does greater than
# <= does less than or equal to
# >= does greater than or equal to
# integers => a whole number e.g. 1
# flots => a floating point number, needs to be declared with a decimal place e.g. 1.0
# = assignment operator
# == equality operator
# += => increment a number up by 1
# +- => decrement a number by 1

# ESCAPE CHARACTERS
# # \\ Escapes a backslash
# \' Escapes a single quote
# \" Escapes a double quote
# \a Escapes ASCII bell (BEL)
# \b Escapes ASCII backspace (BS)
# \f Escapes ASCII formfeed (FF)
# \n Escapes ASCII linefeed (LF)
# \r Escapes ASCII carriage return (CR)
# \t Escapes ASCII horizontal tab (TAB)
# \uxxxx Escapes character with 16-bit hex value xxxx (Unicode)

# STRING CONVERSION
# .to_i => convert something to an integer e.g. a string
# .to_f => converts something to a float e.g.g a string

# SCRIPT ARGUMENTS
# ARGV => a variable that a script can access that contains values passed to it from the user via the terminal
# ARGV.first => gets the first value from ARGV
# one_var, two_var = ARGV => another way to create and assign variables while accessing values from ARGV
# ARGV[1] => yet another way to access the ARGV array (by index)

# USER INPUT
# gets.chomp => gets input from the user
# gets.chomp => gets input from the user and removes the new line return. chomp can be used on any string. There are actually two methods there, gets and chomp
# $stdin.gets => a way to get user input when using ARGV; gets defaults to look at ARGV rather than the standard input
# $stdin.gets.chomp = > a way to get and chomp user input when using ARGV

# FILE OBJECT
# open() => opens the file
# close() => closes a file
# read() => read the contents of a File
# readline() => read one line of text
# truncate(an_int) => Empties a file, use with care!!!
# write('something') => write something to the file
# --> the open command takes a 'w' to indicate we want to write to the file. Note that 'w' overwrites the contents!!
# ---> can also use 'a' for append and 'r' for read
# seek(an_int) => go to the location inside a file e.g. 0 is the start positioon

# FUNCTIONS
# => Start with 'def'
# => name should start with a letter and can contain letters, numbers of underscores
# => puts argumentnames inside parentheses ()
# => arguments need unique names
# => indent the lines inside the function by two spaces
# => end the function with 'end'
# => Functions that don't take any arguments don't need to be called with (), but it may make sense to include them formfeed readability
# => Can return things from it with the return keyword or it will just return the last expression anyway
