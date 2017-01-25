#Hashes
Like a dictionary. Similar to an array but you can specify the indexes/keys you use.


######Example:

 > ages = {}"Joe" => 31,"Sally" => 30, "Bob" => 50}  

######Example:

 > empty_hash = {}  
=> []{}
 > another_empty_hash = Hash.new  
=> {}

##Key Methods

hash.key
######Returns the key of a given occurrence or nil. Add ? to get a boolean back.

hash.keys
######Returns an array of the keys of the hash.

hash.has_key?("myValue")
######Boolean to tell if the key is present in the hash.

hash.has_value?(y)
######Boolean to tell if the value is present in the hash.

hash.invert
######Returns a new hash with the keys and values switched.

hash.flatten
######Returns a one dimensional array version of the hash.

hash.to_a
###### Converts the hash to a nested array.

hash.select {|x,y| x > "a"}
######Filters the hash given a condition that is met (true).

hash.reject {|x,y| x > "a"}
######Opposite of select, filters where the criteria is false

hash.each {|key, value| puts "#{key} is #{value}"}
######Iterate over the hash with key and value. Also known as each_pair.

hash.each_key {|key| puts key}
######Iterate over the hash with key.

hash.each_value {|value| puts value}
######Iterate over the hash with value.
