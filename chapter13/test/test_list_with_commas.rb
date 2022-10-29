require 'minitest/autorun'
require_relative '../lib/list_with_commas'

class TestListWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end

  def test_one_word
    @list.items = %w[apple]

    assert_equal('apple', @list.join)
  end

  def test_two_words
    @list.items = %w[apple orange]

    assert_equal('apple and orange', @list.join)
  end

  def test_three_words
    @list.items = %w[apple orange pear]

    assert_equal('apple, orange, and pear', @list.join)
  end
end
