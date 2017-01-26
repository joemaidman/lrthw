# Declare a variable called formatter and assign it the value of a string that contains more variables (interpolation)
formatter = "%{first} %{second} %{third} %{fourth}"
# Print the variable formatter to the screen, assigning each element a numeric value, 1-4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# Print the variable formatter to the screen, assigning each element a string value, "one", "two" etc
puts formatter %{first: "one", second: "two", third: "three", fourth: "four"}
# Print the variable formatter to the screen, assiging each element a boolean value, true or false
puts formatter % {first: true, second: false, third: true, fourth: false}
# Print the variable formatter to the screen, assigning each element the same variable values inside formatter i.e. insert the variable into itself four times
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
# Print the variable formatter to the screen, assigning a different string to each value
puts formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}
