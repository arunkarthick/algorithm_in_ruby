def selectionSort(a)
  return a if a.size < 2
  0.upto(a.size-2) do |i|
    min = i
    (i+1).upto(a.size - 1) do |j|
      if a[j] < a[min]
        min = j
      end
    end
    a[i], a[min] = a[min], a[i] if i != min
  end
  a
end

a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].shuffle
p a.inspect
p selectionSort(a).inspect