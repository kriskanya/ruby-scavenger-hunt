require 'matrix'

class MyVector < Vector

  # you don't need an initialize class because if you wrote one you'd be overwriting Vector

  # def calculate_distance(vector1, vector2)
  #   distance = vector1 - vector2
  #   # distance = Math.sqrt((vector1.x - vector2.x)** + (vector1.y - vector2.y)**)
  #   distance.magnitude
  # end


  # Jurnell's code:
  def distance(v)
    Math.sqrt((self[0] - v[0])**2 + (self[1] - v[1])**2)
  end

  # # how you would call this
  # MyVector[1,2].distance(Vector[2,2])
  #
  # the MyVector[1,2] part of this (which corresponds to 'self') is like 'this' in Javascript

  def self.pathlength(*n)
    # how would you do it for two points?
    # MyVector[1,2].distance(Vector[2,2])

    # n.inject(0) { |sum, number| sum + number}

    total_distance = 0
    n.each do |i|
      total_distance += MyVector[n[i], n[i]].distance(Vector[n[i], n[i]])
  end
  total_distance


  #Jurnell's class implementation
  def self.distance(a, *more)
    if more.length < 1
      return nil
    end
    

end
