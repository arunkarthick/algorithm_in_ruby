# Given a sorted array of size N and a sorted array of size M+N, 
# merge the first array into the second preserving order. 
# There is enough space in the second array to hold all elements from the first one.

a = [1,2,3,4,5]
b = [5,6,7,8,9,10,11]

def mergeSortedArrays(a,b)
  (a.size-1).downto(0).each do |i|
    (b.size-1).downto(0).each do |j|
      if b[j] > a[i]
        b[j], b[j+1] = a[i], b[j]
      end
    end
  end
  b
end
expected = a + b
p mergeSortedArrays(a, b) == expected