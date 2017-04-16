=begin

#KEYWORDS
: BEGIN => Run this block when the script starts
  e.g. BEGIN { puts "hi" }

: END => Run this block when the script ends
  e.g. END { puts "bye"}

: alias => Create another name for a function
  e.g. alias X Y

: and => logical and, but lower priority than &&
  e.g. puts "Hello" and "Goodbye"

: begin => start a block, usually for exceptions
  e.g. begin end

: break => Break out of loop now!
  e.g. while true; break; end

: case => Case style conditional, like an if
  e.g. case X; when Y; else; end

: class => Define a new class
  e.g. class X; end

: def => Define a new function
  e.g. def X(); end

: defined? => Is this class/function etc defined already?
  e.g. defined? Cass == "constant"

: do => Create a block that maybe takes a parameter
  e.g. (0..5).each d0 |x| puts x end

: else => Else conditional
  e.g. if X; else; end

: elsif => Else if conditional
  e.g. if X; elsif Y; else; end

: end => Ends a block, function, class, anything
  e.g. begin end

: ensure => Run this code whether an exception happens or not
  e.g. begin ensure end

: for => For loop but better to use .each
  e.g. for X in Y; end

: if => If conditional
  e.g. if X; end

: in => In part for-loops
  e.g. for X in Y; end

: module => Define a new module
  e.g. module X; end

: next => Skip to the next element of an .each iterator
  e.g. (0..5).each {|y| next}

: not => Logical not but better to use !
  e.g. not true -- false

: or => Logical or
  e.g. puts "Hello" or "Goodbye"

: redo => Rerun a block exactly the same
  e.g. (0..5).each{|i| redo if i > 2}

: rescue => Run this code if an exception happens
  e.g. begin rescue X; end

: retry => In a rescue clause, try the block again
  e.g. (0..5).each{|i| retry if i > 2}

: return => Returns a value from a function
  e.g. return X

: self => The current object, class or module
  e.g. defined? self == "self"

: super => The parent class of this class
  e.g. super

: then => Can be used with if
  e.g. if true then puts "hi" end

: undef => Remove a function definition from a class
  e.g. undef X

: unless => Inverse of if
  e.g. unless false then puts "not" end

: until => Opposite of while, run code as long as false
  e.g. until false; end

: when => Part of case conditionals
  e.g. case X; when Y; else; end

: while => While loop
  e.g. while true; end

: yield => Pause, transfer control to the code block
  e.g. yield

#DATA TYPES
: true => True boolean
  e.g. true or false == true

: false => False boolean
  e.g. false and true == false

: nil => Nothing or no value
  e.g. x = nil

: strings => Text information
  e.g. x = "Hello"

: numbers => integers
  e.g. i = 100

: floats => Decimals
  e.g. i = 10.132123

: arrays => A list
  e.g. j = [3,4,6,7]

: hashes => Key, Value pairs or a dictionary
  e.g. e = {"Joe" => 30, "Bob" => 40}

  #ESCAPE SEQUENCES
: \\ => Backslash
: \' => Single quote
: \" => Double-quote
: \a => Bell
: \b => Backspace
: \f => Formfeed
: \n => Newline
: \r => Carriage
: \t => Tab
: \v => Vertical tab

#OPERATORS
: + : Add
  e.g. 2 + 2 == 6

: - : Subtract
  e.g. 2 -4 == -2

: * : Multiply
  e.g. 2 * 4 == 8
: ** : Power of
  e.g. 2 ** 4 = 16

: / : Divide
  e.g. 2 / 4.0 == 0.5

: % : Modulus
  e.g. 2 % 4 == 2

: > : Greater than
  e.g. 4 > 5 = false

: . : Dot access
  e.g. "1".to_i == 1

: :: : Colon access
  e.g. Module::class

: [] : List brackets
  e.g. [1,2,3,4]

: ! : Nothing
  e.g. !true == false

: < : Less than
  e.g. 5 < 6 == true

: >= : Greater than or equal to
  e.g. 4 >= 3 == true

: <= : Less than or equal to
  e.g. 3 <= 2 == false

: <=> : Comparison
  e.g. 4 <=> 4 == 0

: == : Equal
  e.g. 4 == 4 == true

: === : Equality
  e.g. 4 === 4 == true

: != : Not equal
  e.g. 4 != 4 == false

: && : Logical and, higher precendence
  e.g. true && false == false

: || : Logical or, higher precendence
  e.g. true || false == true

: .. : Range inclusive
  e.g. (0..3).to_a == [0,1,2,3]

: ... : Range non-inclusive
  e.g. (0...3).to_a = [0,1,2]

: @ :  Object scope
  e.g. @var; @@classvar

: @@ : Class scope
  e.g. @var; @@classvar

: $ : Global scope
  e.g. $stdin

=end
