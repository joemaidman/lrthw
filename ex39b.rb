=begin
#HASHES - MORE NOTES
=> Standard form:
  grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

=> Alt form:
grades = Hash.new
grades["Dorothy Doe"] = 9

=> Alt form 2, when hashes are always symbols:
  options = { :font_size => 10, :font_family => "Arial" }
  OR
  options = { font_size: 10, font_family: "Arial" }

  access with symbols:
  options[:font_size]  # => 10
=> Default where a key dosen't exist, pass an argument e.g. o when
  you create the Hash or call the .default method:
  grades = Hash.new(0)
  OR
  grades = {"Timmy Doe" => 8}
  grades.default = 0

=> Access value by key:
  puts grades["Jane Doe"] # => 10

=> Hash has the Enumerable module mixed in to deal with sorting
  people = {
  :fred => 23,
  :joan => 18,
  :pete => 54
  }

  people.sort   # NoMethodError: undefined method `< =>' for :joan:Symbol
  SO...
  people.sort_by { |name, age| age }
  # => [[:joan, 18], [:fred, 23], [:pete, 54]]


=end
