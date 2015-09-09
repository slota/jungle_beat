require 'linked_list'

class LinkedListTest < Minitest::Test

  def test_it_connects
    node = LinkedList.new("test")
    assert_equal "test", node.head.data
  end

  def test_it_accepts_zero_data
    node = LinkedList.new(nil)
    assert_equal nil, node.head.data
  end

  def test_it_knows_the_tail
    node = LinkedList.new("tail")
    assert_equal "tail", node.tail.data
  end

  def test_it_gets_tail_data
    node = LinkedList.new("tail")
    assert_equal "tail", node.tail_data
  end

  def test_it_gets_tail_data
    node = LinkedList.new("head")
    assert_equal "head", node.head_data
  end

  def test_it_appends
    node = LinkedList.new("new tail")
    node.append("reddit")
    assert_equal "reddit", node.tail_data
  end

  def test_it_prepends
    node = LinkedList.new("head")
    node.prepends("new first head")
    assert_equal "new first head", node.head_data
  end

  def test_it_inserts
    node = LinkedList.new("head")
    node.append("jersey mike")
    node.insert("tangarang", 1)
    node.insert("hola", 1)
    assert_equal "tangarang", node.tail_data
  end
end
