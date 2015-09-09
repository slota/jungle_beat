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
    check_where_to_insert


  end

  def check_where_to_insert(data, position)
    current = @head
    position_check = 0
    until position_check == position
      current = current.next_node
      position_check +=1
    end
    current
  end


  # def count(data)
  #   @counter += 1
  # end
  #
  # def count_total
  #   @counter
  # end


end
