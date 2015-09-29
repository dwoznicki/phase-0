# Leap Years

# I worked on this challenge by myself.


# Your Solution Below
def leap_year? year
  if year%400 == 0
    return true
  end
  if year%100 == 0
    return false
  end
  if year%4 == 0
    return true
  else
    return false
  end
end