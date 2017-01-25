#Strings

##Basic manipulation
Manipulation at the objects lowest level

- To retrieve nth character, use [] with zero base index and negative sign to start at the end of the string.
- Can pass two numbers (e.g. [n,m]) to get m characters after the index n.
- Or pass a range object to get characters between two indexes (e.g. [n..m]).

######Example:
 > myString = "I like Ruby"

 => "I like Ruby"

 > myString[3]

 => => "i"

 > myString[-3]

 => "u"

######Example:
 >myString[3,6]

 => "ike Ru"

######Example:
 >myString[3..6]

 => "ike "

##Interpolation
Accessing variables inside strings, an alternative to simple concat (+).

- Only with double quotes (" "), not single.
- Automatically does string conversion too (i.e. no need to use .to_s).

######Example:
> name = "Joe"

> "Hi there #{name}"

=> "Hi there Joe"

Instead of using > "Hi there" + name

######Example:
> "2 + 2 = #{2+2}"

=> "2 + 2 = 4"

##Methods

######string.capitalize / string.capitalize!
Returns a string with the first letter of the input string capitalised

######string.upcase/string.upcase
Returns a string with all upper or lower case.

######string.length
Returns number of characters in the string (including spaces).

######string.include? "txt"
Looks for a string inside another string and returns true or false. Case sensitive.

######string.gsub(pattern,replacement)
Returns a copy of the string with the search pattern replaced with the second argument. e.g. string.gsub(/[arrayofletters]/,"changetothis"). Also takes hashes, blocks and regular expressions.

######string.slice(index) / string.slice(n,m) / string.slice(n..m) / string.slice("txt")
Similar to simply asking for indexes (see above) in the case of the first three. More complicated versions take regexp.

######string.split / string.split(' ')
Splits string into an array of strings delimited by the text in brackets of a space by default.

######string.chars
Returns an array of characters, shorthand for string.each_char.to_a.
