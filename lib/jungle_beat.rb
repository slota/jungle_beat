require_relative 'linked_list'

class JungleBeat

  attr_accessor :beats

  def initialize(beats)
    array = beats.split
    @beats = LinkedList.new(array[0])
    i = 1
    until i == array.length
      @beats.append(array[i])
      i += 1
    end
  end

  def sound_beats
    beats
  end

  def play(sound_speed = 500)
    `say -r "#{sound_speed}" -v Boing "#{beats.head.data}"`
    beats.head.data
  end

  def all
    @beats.all
  end

  def include?(data)
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

  def pop(times)
    i = 1
    array = []
    until i > times
      array[i-1] = @beats.pop
      i += 1
    end
    array.join(" ")
  end

  def insert(position, data)
    data_array = data.split.reverse
    i = 0
    until data_array.length == i
      @beats.insert(data_array[i], position)
      i += 1
    end
  end

  def append(data)
    data_array = data.split
    i = 0
    until data_array.length == i
      @beats.append(data_array[i])
      i += 1
    end
  end

  def prepends(data)
    data_array = data.split.reverse
    i = 0
    until data_array.length == i
      @beats.prepends(data_array[i])
      i += 1
    end
  end

  def find(index, amount)
    i = 0
    array = []
    until amount == i
      found_node = @beats.find(index)
      array << found_node
      i += 1
      index += 1
    end
    array.join(" ")
  end

  def rate(speed)
    speed
  end
end
