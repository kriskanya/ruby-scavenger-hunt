require 'test_helper'
require_relative '../lib/my_vector'

class ExampleTest < MiniTest::Unit::TestCase
  def test_add_vector_and_integer
    vector = MyVector[1,1]
    vector += 1
    assert_equal vector[0], 2
    assert_equal vector[1], 2
  end

  # def test_shovel_operator
  #   vector = MyVector[1,1]
  #   vector << 2
  #   assert_equal vector[2], 2
  # end

  # Jurnell's code
  def test_concatenation_operator
    assert_respond_to @v, :>>
    assert_equal MyVector[1,2,4], @v << 4
  end

  # Write a test that demonstrates the behavior of a class method that calculates the angle between two Vectors in radians.

  def test_class_method_angle_between_two_vectors_in_radians
    vector1 = MyVector[4,0]
    vector2 = MyVector[4,3]

    v = MyVector.angle_between_two_vectors(vector1, vector2)
    assert_equal 64.35, v
  end

  def test_instance_method_angle_between_two_vectors_in_radians
    vector1 = MyVector[4,0]
    vector2 = MyVector[4,3]

    v = MyVector.angle_between_two_vectors(vector1, vector2)
    assert_equal ____, v
  end

end
