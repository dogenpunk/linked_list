require "test_helper"

class LinkedListTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::LinkedList::VERSION
  end

  def test_linked_list_node_has_a_value
    node = ::LinkedList::Node.new(1)

    assert_equal 1, node.value
  end

  def test_linked_list_node_has_a_next_node
    node = ::LinkedList::Node.new(1, :a)

    assert_equal :a, node.next_node
  end

  def test_linked_list_node_initializes_with_value_and_next_node
    last = ::LinkedList::Node.new(10, nil)
    head = ::LinkedList::Node.new(7, last)

    assert_equal 7, head.value
    assert_equal last, head.next_node
  end
end
