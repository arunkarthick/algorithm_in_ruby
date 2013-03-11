# class Node
#   attr_accessor :value, :left, :right
#   def initialize(value, left = nil, right = nil)
#     @value = value
#     @left = left
#     @right = right
#   end
#   
#   def insert(node, v, &block)
#     return Node.new(v) unless node
#     if block[v, node.value] == -1
#       node.left = insert(node.left, v, &block)
#     elsif block[v, node.value] == 1
#       node.right = insert(node.right, v, &block)
#     end
#     return node
#   end
# end
MINVALUE = -1
def is_bst?(node)
  if node.left?
    is_bst?(node.left)
  end
  if (node.data > MINVALUE)
    MINVALUE = node.data
  else
    return false
  end
  if node.right?
    is_bst?(node.right)
  end
  return true  
end