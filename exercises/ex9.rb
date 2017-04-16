# Here's some new strange stuff, remember type it exactly.
# A variable called days is declared and assigned a string value containing abbreviated days of the week
days = "Mon Tue Wed Thu Fri Sat Sun"
# A variable called months is declared and assiged a string value containing months of the year, separated by the \n escape character (new line)
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
# Prints a string to the screen including interpolation from the days variable
puts "Here are the days: #{days}"
# Prints a string to the screen including interpolation from the months variable which shows each month on a new line given the escape character (\n))
puts "Here are the months: #{months}"
# Appears to print the literal content of the string given (including line breaks), without the need for quotes. USes a %q{} format
puts %q{
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}
