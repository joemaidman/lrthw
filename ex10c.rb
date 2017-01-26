tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."
# Tried using triple-single-quotes but it didn't work. While you can escape a single quote inside triple-single-quotes, you can't use other escape sequences.
fat_cat= '''
I\'ll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''

puts tabby_cat
puts persian_cat
puts fat_cat
