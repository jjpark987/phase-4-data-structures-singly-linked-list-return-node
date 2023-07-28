require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    target_index = size - n 
    node = @head
    counter = 0

    if size < n || n < 1
      return nil
    end

    while counter < target_index
      node = node.next_node
      counter += 1
    end

    node.value
  end

  def size
    node = @head
    counter = 0

    while node
      node = node.next_node
      counter += 1
    end

    counter
  end
end

# linked_list = LinkedList.new
# linked_list.head = Node.new(1)
# linked_list.head.next_node = Node.new(2)
# linked_list.head.next_node.next_node = Node.new(3)
# linked_list # 1 -> 2 -> 3

# s = linked_list.size

# binding.pry
