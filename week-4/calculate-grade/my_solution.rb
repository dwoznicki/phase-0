# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(average)
  if average >= 90
  return "A"
  elsif average >= 80 && average <= 89
  return "B"
  elsif average >= 70 && average <= 79
  return "C"
  elsif average >= 60 && average <= 69
  return "D"
  else
  return "F"
 end
end


get_grade(5)