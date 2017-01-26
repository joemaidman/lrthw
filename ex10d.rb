#Playing with combining escape sequences and format strings

my_escaped_string = """
\tHi there, I'm an escaped string. Shakespeare once said \"Love all, trust a few, do wrong to none\".
"""
puts my_escaped_string

my_combined_string = "#{my_escaped_string}" + "\tWhat a guy! I\'d love to have met him."

puts my_combined_string
