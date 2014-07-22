require 'matrix'

class MyVector < Matrix::Vector
  def distance(vector_final)
    delta_vector = vector_final - self
    delta_vector.magnitude
  end

  def self.path_length(*points)
    return 0 if points.size < 2
    total = 0
    points.each_index do |i|
      total += points[i].distance(points[i+1]) unless i == points.size - 1
    end
    total
  end

  def <<(i)
    MyVector.elements(self.to_a << i)  # elements is a class method
    # elements creates a vector from an array
  end

  def self.angle_between_two_vectors(v1, v2)
    Math.cos = 
    # Math.cos(theta) = (vector1[0] * vector1[1] + vector2[0] * vector2[1])/(Math.sqrt(vector1[1] + vector2[1]) * Math.sqrt(vector1[0] + vector2[0]))
  end

end
