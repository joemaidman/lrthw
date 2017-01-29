# Logic games, have put them in a file with a gets prompt so they appear as I go

puts "1) true && true"
gets
puts "The answer was #{true && true}"

puts "2) false && true"
gets
puts "The answer was #{false && true}"

puts "3) 1 == 1 && 2 == 1"
gets
puts "The answer was #{1 == 1 && 2 == 1}"

puts "4) \"test\" == \"test\""
gets
puts "The answer was #{"test" == "test"}"

puts "5) 1 == 1 || 2 != 1"
gets
puts "The answer was #{1 == 1 || 2 != 1}"

puts "6) true && 1 == 1"
gets
puts "The answer was #{true && 1 == 1}"

puts "7) false && 0 != 0"
gets
puts "The answer was #{false && 0 != 0}"

puts "8) true || 1 == 1"
gets
puts "The answer was #{true || 1 == 1}"

puts "9) \"test\" == \"testing\""
gets
puts "The answer was #{"test" == "testing"}"

puts "10) 1 != 0 && 2 == 1"
gets
puts "The answer was #{1 != 0 && 2 == 1}"

puts "11) \"test\" != \"testing\""
gets
puts "The answer was #{"test" != "testing"}"

puts "12) \"test\" == 1"
gets
puts "The answer was #{"test" == 1}"

puts "13) !(true && false)"
gets
puts "The answer was #{!(true && false)}"

puts "14) !(1 == 1 && 0 != 1)"
gets
puts "The answer was #{!(1 == 1 && 0 != 1)}"

puts "15) !(10 == 1 || 1000 == 1000)"
gets
puts "The answer was #{!(10 == 1 || 1000 == 1000)}"

puts "16) !(1 != 10 || 3 == 4)"
gets
puts "The answer was #{!(1 != 10 || 3 == 4)}"

puts "17) !(\"testing\" == \"testing\" && \"Zed\" == \"Cool Guy\")"
gets
puts "The answer was #{!("testing" == "testing" && "Zed" == "Cool Guy")}"

puts "18) 1 == 1 && (!(\"testing\" == 1 || 1 == 0))"
gets
puts "The answer was #{1 == 1 && (!("testing" == 1 || 1 == 0))}"

puts "19) \"chunky\" == \"bacon\" && (!(3 == 4 || 3 == 3))"
gets
puts "The answer was #{"chunky" == "bacon" && (!(3 == 4 || 3 == 3))}"

puts "20) 3 == 3 && (!(\"testing\" == \"testing\" || \"Ruby\" == \"Fun\"))"
gets
puts "The answer was #{3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))}"
