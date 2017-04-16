# Stripping the script down as much as possible!
# Can access ARGV by index two (it is an array). Chaining used here.
out_file = open(ARGV[1], 'w').write(open(ARGV[0]).read)
