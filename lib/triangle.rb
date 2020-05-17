class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1 
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def conditional
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_3 == side_1
      :isosceles
    else 
      :scalene
    end
  end
  
  def kind 
    conditional
    if side_1 + side_2 > side_3 || side_2 + side_3 > side_1 || side_3 + side_1 > side_2 || side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      begin
        raise TriangleError 
      rescue TriangleError => error
      end
  
    
    end
  end 
  
  
  class TriangleError < StandardError
  end
  
  
  
  
  
  
end
