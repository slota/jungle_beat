class LinkedList

  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
    # @counter = 0
  end

  def tail_data
    tail.data
  end

  def head_data
    head.data
  end

  def append(data)
    new_node       = Node.new(data)
    tail.next_node = new_node
  end

  def prepends(data)
    new_node        = Node.new(data)
    old_head        = @head
    @head           = new_node
    @head.next_node = old_head
  end

  def tail
    current = @head
    until current.next_node.nil?
      current = current.next_node
    end
    current
  end

  def insert(data, position)
    if position == 0
      prepends(data)
    else
      previous = check_where_to_insert(data, position)
      insert_new_node(data, previous)
    end
  end

  def insert_new_node(data, previous)
    new_node = Node.new(data)
    new_node.next_node = previous.next_node
    previous.next_node = new_node
  end

  def check_where_to_insert(data, position)
    previous = @head
    position_check = 0
    until position_check == (position-1)
      previous  = previous.next_node
      position_check +=1
    end
    previous
  end

  def count(data)
    @counter += 1
  end

  def count_total
    @counter
  end

  def all
    current = @head
    array_string = ''
    until current.next_node == nil
      array_string << "#{current.data} "
      current = current.next_node
    end
    array_string << "#{current.data}"
  end

  def all_nodes
    current = @head
  end

  def includes?(data)
    i = 0
    array = all.split
    until i > array.length || data == array[i]
      i += 1
    end
    data == array[i]
  end

  def count
    array = all.split
    array.count
  end

  def pop
    tail_delete
    data = tail_delete.next_node.data
    tail_delete.next_node = nil
    data
  end

  def tail_delete
    current  = @head
    previous = @head
    until current.next_node.nil?
      previous = current
      current = current.next_node
    end
    previous
  end
end
