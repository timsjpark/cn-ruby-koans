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
  if a == b and a == c and b == c            # Eqilateral triangle, lines 17-19
  	return :equilateral
  end

  if a == b and a != c and b != c           # Isosceles triangle, lines 21-25
  	return :isosceles
  elsif a == c and a != b and c != b
  	return :isosceles
  elsif b == c and b != a and c != a 
  	return :isosceles      
  end

  if a != b and b != c and a != c    # Scalene triangle, lines 27-30
  	return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
