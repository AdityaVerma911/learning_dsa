class LinkedList
  attr_accessor :head

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end

  def initialize(head = nil)
    @head = head
  end

  # number of nodes in a linked list
  def length
    temp = @head
    counter = 0

    while temp != nil
      counter += 1
      temp = temp.next_node
    end

    counter
  end

  # insert data from last
  def append(value)
    if @head.nil?
      @head = new_node(value)
    else
      temp = @head

      while temp.next_node != nil
        temp = temp.next_node
      end

      temp.next_node = new_node(value)
    end
  end

  # insert data from beginning
  def unshift(value)
    @head = new_node(value, @head)
  end

  # insert at index

  def insert_at(index, value)
    return if index < 0 || index > length
    return unshift(value) if index == 0

    temp = @head
    i = 0

    while temp != nil
      if i == index - 1
        temp_2 = temp.next_node
        temp.next_node = new_node(value)
        temp.next_node.next_node = temp_2
        return
      end

      i += 1
      temp = temp.next_node
    end
  end

  # delete node from beginning
  def delete_first
    return if @head.nil?

    @head = @head.next_node
  end

  # delete last node
  def delete_last
    return if @head.nil?

    # only one node
    if @head.next_node.nil?
      @head = nil
      return
    end

    temp = @head

    while temp.next_node.next_node != nil
      temp = temp.next_node
    end

    temp.next_node = nil
  end

  # delete node at index
  def delete_at(index)
    return if @head.nil? || index < 0

    if index == 0
      delete_first
      return
    end

    temp = @head
    i = 1

    while temp.next_node != nil && i < index
      temp = temp.next_node
      i += 1
    end

    return if temp.next_node.nil?

    temp.next_node = temp.next_node.next_node
  end

  # find a value

  def find(value)
    temp = @head
    index = 0
    while temp != nil
      return index if temp.value == value
      index += 1
      temp = temp.next_node
    end
    -1
  end

  def reverse
    previous = nil
    current = @head
    while current != nil
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end
    @head = previous
  end

  # display list data
  def print_list
    temp = @head

    while temp != nil
      print "#{temp.value} => "
      temp = temp.next_node
    end

    puts "nil"
  end

  private

  def new_node(value, next_node = nil)
    Node.new(value, next_node)
  end
end


# Example

list = LinkedList.new

list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)

list.print_list
# 1 => 2 => 3 => 4 => 5 => nil

list.unshift(0)

list.print_list
# 0 => 1 => 2 => 3 => 4 => 5 => nil

list.delete_first

list.print_list
# 1 => 2 => 3 => 4 => 5 => nil

list.delete_last

list.print_list
# 1 => 2 => 3 => 4 => nil

list.delete_at(1)

list.print_list
# 1 => 3 => 4 => nil

p list.length
# 3

p list.find(3)

list.reverse

list.print_list