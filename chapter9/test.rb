require 'minitest/autorun'

class Test < MiniTest::Test
  def test_true_assertion
    assert true
  end

  def test_false_assertion
    assert false
  end
end
