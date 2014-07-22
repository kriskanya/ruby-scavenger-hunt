class MyVector

  def initialize (x, y)
    @x = x
    @y = y
  end

  def calculate_distance(vector1, vector2)
    distance = Math.sqrt((vector1.x - vector2.x)**2 + (vector1.y - vector2.y)**2)
    distance
  end

end
