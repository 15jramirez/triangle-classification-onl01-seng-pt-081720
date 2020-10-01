class Triangle
 attr_accessor :length_one, :length_two, :length_three
 
 def initialize(length_one, length_two, length_three)
   @length_one = length_one
   @length_two = length_two
   @length_three = length_three
 end
 
 def kind 
   if (length_one == length_two) && (length_two == length_three)
     :equilateral
   elsif length_one == length_two || length_two == length_three || length_three == length_one
     :isosceles
   else
     :scalene
   end
 end
 
 class TriangleError < StandardError
 end
end
