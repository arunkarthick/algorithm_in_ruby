def find_largest_element(node, k)
  return nil unless node
  index = 0
  find_largest_element(node.right, k)
  if ++index == k
    return node.data
  end
  find_largest_element(node.left, k)
end

def find_smallest_element(node, k)
  return nil unless node
  index = 0
  find_smallest_element(node.left, k)
  if ++index == k
    return node.data
  end
  find_smallest_element(node.right, k)
end

