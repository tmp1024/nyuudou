require 'test_helper'

class BubbleTest < MiniTest::Test
  def test_bubble_sort
    ary = [3, 2, 1]
    assert_equal [1, 2, 3], ary.bubble_sort
    refute_equal [1, 2, 3], ary
    assert_equal [3, 2, 1], ary
  end

  def test_bubble_sort!
    ary = [3, 2, 1]
    assert_equal [1, 2, 3], ary.bubble_sort!
    assert_equal [1, 2, 3], ary
    refute_equal [3, 2, 1], ary
  end
end
