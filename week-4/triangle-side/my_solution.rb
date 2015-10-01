# I worked on this challenge with: Eran Chazan.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a > 0 && b > 0 && c > 0
    if (a + b > c)&&(a + c > b)&&(c + b > a)
      return true
    else
      return false
    end
  else
    return false
  end
end
if

end