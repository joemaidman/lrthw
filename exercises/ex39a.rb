# create a mapping of stat to abbreviation
counties = {
  'Hertforshire' => 'HERTS',
  'Nottinghamshire' => 'NOTTS',
  'Lincolnshire' => 'LINCS',
  'Rutland' => 'RUT',
  'Somerset' => 'SOM'
}

# create a basic set of states and some cities in them
places = {
  'HERTS' => 'Stevenage',
  'NOTTS' => 'Nottingham',
  'LINCS' => 'Grimsby'
}

# add some more cities
places['RUT'] = 'Uppingham'
places['SOM'] = 'Bath'

# puts out some cities
puts '-' * 10
puts "HERTS county has: #{places['HERTS']}"
puts "SOM county has: #{places['SOM']}"

# puts some states
puts '-' * 10
puts "Nottingham's abbreviation is: #{counties['Michigan']}"
puts "Rutland's abbreviation is: #{counties['Rutland']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Lincolnshire has: #{places[counties['Lincolnshire']]}"
puts "Hertforshire has: #{places[counties['Hertfordshire']]}"

# puts every state abbreviation
puts '-' * 10
counties.each do |county, abbrev|
  puts "#{county} is abbreviated to #{abbrev}"
end

# puts every city in stte
puts '-' * 10
places.each do |abbrev, place|
  puts "#{abbrev} has the place #{place}"
end

# now do both at the same time
puts '-' * 10
counties.each do |county, abbrev|
place = places[abbrev]
puts "#{county} is abbreviated #{abbrev} and has place #{place}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
county = counties['Cornwall']

if !county
  puts "Sorry no Cornwall."
end

# default values using ||= with the nil result
place = places['CORN']
# ||= sets the variable to the given value if the current value of it is nil, false or undefined
place ||= 'Does Not Exist'
puts "The place for the county 'CORN' is: #{place}"
