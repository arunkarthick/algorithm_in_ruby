# Merge sort in ruby
##################################################
def mergeSort(a)
  return a if a.size <= 1
  mid = (a.size/2).round
  left, right = a.take(mid), a.drop(mid)
  result = combine(mergeSort(left), mergeSort(right))
end

def combine(a, b)
  return (b.empty? ? a : b) if (a.empty? || b.empty?)
  smallest = a.first <= b.first ? a.shift : b.shift
  combine(a,b).unshift(smallest)
end

# Test
a = [2,3,4,5,6,1,7,8,9,10].shuffle
p mergeSort a