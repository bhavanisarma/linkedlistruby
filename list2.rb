class LinkedListNode
 
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
  
end
#print the values from a linked list
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

#infinite list or not
def infinite_list(list)
  tortoise = list.next_node
  hare = list.next_node

  until hare.nil?
    if hare.nil?
      return false
    end
    hare=hare.next_node
    tortoise = tortoise.next_node
    if hare == tortoise
        return true
    end
  end
    return false
end
#reverse a list
def reverse_list(list, previous=nil)
	if list
		next_node = list.next_node
		list.next_node = previous
		reverse_list(next_node, list)
	end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
puts 'The linked list is'
print_values(node3)
puts 'The reversed linked list is'
reverse_list(node3)
print_values(node1)
puts 'Is it an Infinite list ?'
node3.next_node=node1
puts infinite_list(node3)













