# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.map { |return_this| return_this if return_this.to_s.include? thing_to_find }.compact
end

def my_hash_finding_method(source, thing_to_find)
  source.map { |return_this, value| return_this if value == thing_to_find }.compact
end

#Refactored
def my_array_finding_method(source, thing_to_find)
  source.select { |return_this| return_this if return_this.to_s.include? thing_to_find }
end

def my_hash_finding_method(source, thing_to_find)
  array = Array.new
  source.select { |key, value| array << key if value == thing_to_find }
  array
end


#====Methods====
#-map iterates through an enumerable and returns an array of objects based on the criteria you set in the block
#-to_s changes an object to a string
#-include? x checks if x is included in the object its called on; it can work on arrays, strings, etc.
#-compact removes all instances of nil from an array; useful here since map returns nil for objects that don't meet the criteria

#====My thought process====
#My basic goal was to return an array with the correct objects without making a new 'results' array. I accomplished this through the use of .map. Map is set to iterate through a list and apply a block of code to the list, returning an array of results in the end.
#So I .mapped the source, telling it to return the objects which matched thing_to_find, essentially. For my_array_finding_method, I had to use .to_s to change the 2 and 3 to strings, and checked to see which words included thing_to_find. For my_hash_finding_method, I asked it to check the values instead of the keys for the age.
#As it turns out, instead of removing them, .map returns nil for objects that don't meet the criteria. So my last step was to .compact the while .map array to remove all the nils.

#====Ruby Docs====
#I'm still not that good at reading Ruby Docs, but what I've been doing is taking notes of the methods I use and what they do in a .txt file. Once I've used it and uderstand better how it works, I like to write it down with a basic example of how it works.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |x| if x.is_a?Integer then x += thing_to_modify else x end }
end

def my_hash_modification_method!(source, thing_to_modify)
    source.each { |key, value| source[key] = value + thing_to_modify }
end

# Identify and describe the Ruby method(s) you implemented.
#map! is a destructive method which returns an array based on the block you pass it
#is_a? returns true if the object it's called on is of the kind you specify
#each iterates.. I couldn't find a better method than each for the hash


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
