# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if( a < 1 || b < 1 || c < 1 )
    raise TriangleError
  end
  
  if( (a >= (b + c)) || (b >= (a + c)) || (c >= (a + b)) )
    raise TriangleError
  end
  
  sideEqual = 0
  sideEqual += 1 if lengthEqual(a, b)
  sideEqual += 1 if lengthEqual(a, c)
  sideEqual += 1 if lengthEqual(b, c)
  
  if sideEqual == 3
    :equilateral
  elsif sideEqual == 1
    :isosceles
  else
    :scalene
  end
end

def lengthEqual(a, b)
  return a == b
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
