# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# For method assert
#   UNLESS block arguments is true
#   raises error "Assertion failed"
# Set name variable to bettysue
# Run assert passing in argument that name is equal to bettysue
#   returns nil since no return statement
# Run assert passing in argument that name is equal to billybob
#   throws error since block argument is false


# 3. Copy your selected challenge here
def separate_comma integer
  separated = ""
  integer = integer.to_s

  while integer.length >= 4
    last_three = integer[-3, 3]
    separated << "," + last_three
    integer.slice! last_three
  end
  return integer << separated
end


# 4. Convert your driver test code from that challenge into Assert Statements
def random_num(min, max)
   rand(max - min + 1) + min
end

def assert
  raise "Invalid assertion" unless yield
  p true
end
# =====Sucesses=====
assert { /^\d{1,3}$/.match(separate_comma random_num(0,999)) != nil }
assert { /^\d{1},\d{3}$/.match(separate_comma random_num(1000,9999)) != nil }
assert { /^\d{2},\d{3}$/.match(separate_comma random_num(10000,99999)) != nil }
assert { /^\d{3},\d{3}$/.match(separate_comma random_num(100000,999999)) != nil }
assert { /^\d{1},\d{3},\d{3}$/.match(separate_comma random_num(1000000,9999999)) != nil }
assert { /^\d{2},\d{3},\d{3}$/.match(separate_comma random_num(10000000,99999999)) != nil }
# =====Failures=====
assert { /\,$/.match(separate_comma random_num(0,999)) == nil }
assert { /^\d{4}$/.match(separate_comma random_num(1000,9999)) == nil }
assert { /^\d{2},\d{4}$/.match(separate_comma random_num(100000,999999)) == nil }

=begin
# 5. Reflection
What concepts did you review or learn in this challenge?

  I had to review how yield works, though it might be more accurate to say I
  had to learn how yield works. I'd seen it, but never used it for anything
  before now. I also had to look into regular expressions to understand how
  the RSpec file for this challenge was working.

What is still confusing to you about Ruby?

  Regular expressions still look intimidating to me. I have a ways to go
  before I feel comfortable with them. I guess I'll get plenty of practice,
  though, because they appear to be exactly the same in JS.

What are you going to study to get more prepared for Phase 1?

  I'm going to study a lot of things. I'm going to review some Ruby concepts,
  try and learn regular expressions to the point where I can use them
  comfortably, and try and get some practice with the JS DOM.

=end