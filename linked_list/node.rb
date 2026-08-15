class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

node1 = Node.new(10)
node2 = Node.new(20)
node3 = Node.new(30)
node4 = Node.new(40)

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4