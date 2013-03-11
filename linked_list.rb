Node = Struct.new("Node", :name, :next)

list = Node.new("Root", nil)

def linked_list(name, node)
  return Node.new(name, node)
end

def rprint(list)
  p "#{list.name} - next -> #{list.next.name if list.next}"
  rprint(list.next) if list.next
end

10.times do |i|
  list = linked_list(i, list)
end

rprint(list)
