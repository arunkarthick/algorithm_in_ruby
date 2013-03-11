def binarySearch(a, first, last, target)
  if first < last
    mid = (first+last)/2
    if target == a[mid]
      return mid
    else
      if target > a[mid]
        first = mid + 1
      else
        last = mid - 1
      end
    end
    return binarySearch(a, first, last, target)
  end
  return false
end

a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

p binarySearch(a, 0, a.size-1, 10)