# 1. First Solution

# def reverse_words(string) 
#   reverse_string = string.split("").reverse.join("") # this gives me "sweN dlO"
# end

# 2. Second Solution

# def reverse_words(string) # let's say the string is "Old News" - I need "dlO sweN"
#   reverse_string = string.split("").reverse.join("") # this gives me "sweN dlO"
#   reverse_string.split(" ").reverse.join(" ") # this gives me "dlO sweN"
# end

# 2. Refactored Second Solution

def reverse_words(string)
  string.split("").reverse.join("").split(" ").reverse.join(" ") 
end

# p reverse_words("Old News")

def assert
  raise "Assertion failed!" unless yield
end

assert {reverse_words("Joseph") == "hpesoJ"}
assert {reverse_words("Old News") == "dlO sweN"}
assert {reverse_words("") == ""}
assert {reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"}
assert {reverse_words("sihT ecnetnes si !sdrawkcab") == "This sentence is backwards!"}