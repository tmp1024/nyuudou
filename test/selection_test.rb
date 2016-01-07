require 'test_helper'

class SelectionTest < MiniTest::Test
  def test_selection_sort
    ary = [3, 2, 1]
    assert_equal [1, 2, 3], ary.selection_sort
    refute_equal [1, 2, 3], ary
    assert_equal [3, 2, 1], ary
  end

  def test_selection_sort!
    ary = [3, 2, 1]
    assert_equal [1, 2, 3], ary.selection_sort!
    assert_equal [1, 2, 3], ary
    refute_equal [3, 2, 1], ary
  end
end
