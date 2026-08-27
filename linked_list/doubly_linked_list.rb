class DoublyLinkedList
  attr_accessor :head, :tail
  def initialize(head = nil,tail = nil)
    @head = head
    @tail = tail
  end

  class Node
    attr_accessor :value, :next_node, :prev_node

    def initialize(value, next_node = nil,prev_node = nil)
      @value = value
      @next_node = next_node
      @prev_node = prev_node
    end
  end

  # insert from beginning

  def upshift(value)
    if @head.nil?
      @head = new_node(value)
      @tail = @head
    else
      temp = @head
      @head = new_node(value,@head)
      temp.prev_node = @head
      @tail = temp
    end
  end

  # insert node at last

  def append(value)
    if @head.nil?
      @head = new_node(value)
      @tail  = @head
      return
    end
    temp = @head
    while temp.next_node != nil
      temp = temp.next_node
    end
    temp.next_node = new_node(value,nil,temp)
    @tail =  temp.next_node
  end

  # Show list

  def show_list
    temp = @head
    while temp != nil
      print "#{temp.value} -> "
      temp = temp.next_node
    end
    puts ''
  end

  def show_list_in_reverse
    temp = @tail
    while temp != nil
      print "#{temp.value} -> "
      temp = temp.prev_node
    end
    puts ''
  end

  private

  def new_node(value,next_node = nil,prev_node = nil)
    Node.new(value,next_node,prev_node)
  end
end

list = DoublyLinkedList.new
(1..5).each {|i| list.append(i)}
list.upshift(9)
list.show_list
list.show_list_in_reverse


