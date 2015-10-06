#Pseudocode

#Make a list of all the students in copperheads
#Define empty account groups
#-Make x new arrays, where x is number of students/4
#Go through the student list and add random person to each group
#-Choose random number from 0 to students in first list
#-Add student at index number to next account group
#-Do this step x times, where x is number of account groups
#Repeat until there are no more students
#Return a list of the lists
#-Return the final hash

copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]
#[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17]#test array

#Initial Solution
def make_groups cohort
#Defines initial vars and such
  group_num = cohort.length/4
  n = 1
  account_groups = Hash.new("That group doesn't exist.")
#Adds group names and assigns them empty array as values.
  group_num.times {
    account_groups["group_#{n}"] = []
    n += 1
  }
#Iterates over groups assigning random member from cohort, then deletes member from list so they can't be assigned twice.
  until cohort.length <= 0
    account_groups.each do |group, array|
      member = cohort[rand cohort.length]
      array << member
      cohort.delete member
    end
  end
  puts account_groups
  return account_groups
end

make_groups copperheads

#Refactored
def make_groups cohort
#Checks if cohort is too small to make into proper groups
  if cohort.length < 12
    group_num = cohort.length/3
  else
    group_num = cohort.length/4
  end

  n = 1
  account_groups = Hash.new("That group doesn't exist.")

  group_num.times {
    account_groups["group_#{n}"] = []
    n += 1
  }

  until cohort.length <= 0
    account_groups.each do |group, array|
      member = cohort[rand cohort.length]
      array << member
      cohort.delete member
      #Compact! removes nils from arrays
      array.compact!
    end
  end
  puts account_groups
  return account_groups
end

make_groups copperheads

#Reflection
=begin
What was the most interesting and most difficult part of this challenge?

  I actually really enjoyed doing the pseudocode for this challenge. It felt good to come up with a plan of attack, so to speak. I didn't have as much trouble writing this one as I have before. The most difficult part was figuring out how to generate my array names based on the number of groups necessary for the cohort. I had to do a bit of research to figure out how to do so.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

  Yes, I do. The pseudocode for this challenge came out much more easily than it has in the past. I've found success with breaking down the basic structure, then considering what each part should do exactly when coded.

Was your approach for automating this task a good solution? What could have made it even better?

  I think it was a pretty good solution. I decided to iterate over the groups and add a name each run through to get things as even as possible. The downside to this solution is that it favors groups of 4 instead of 5.

What data structure did you decide to store the accountability groups in and why?

  I decided to store the accountability groups in a hash. My initial inclination was to use an array to store the groups, but I found it was very difficult to make an automated function that could assign array names. Luckily, hashes can accept strings as keys, and it wasn't too difficult to make a list of group names as strings.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  I found I was getting some nils in my last account_groups when the number of members wasn't evenly divisible by 4. While not a big deal, I found the compact! method will remove all instances of nil from an array. I also found that it makes account_groups too large for cohorts with less people, so I added a check to fix that.

=end