require 'test_helper'
require 'my_vector'

class VectorTest < MiniTest::Unit::TestCase

  def test_add_integer_to_vector
    v = Vector[1, 2]
    v.add_integer(2)
    assert_equal([3, 4], v)
  end

end
