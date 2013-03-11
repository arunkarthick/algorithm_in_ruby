# Bubble Sort
def bubbleSort(a)
  return a if a.size < 2
  swapped = true
  while swapped
    swapped = false
    0.upto(a.size-2) do |i|
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        swapped = true
      end
    end
  end
  a
end

# Test
a = [2,3,4,5,6,1,7,8,9,10].shuffle
puts a.inspect
p bubbleSort a