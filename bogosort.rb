def bogosort(arr)
  sorted = false
  while sorted == false
    sorted = true
    i = 0
    while i < arr.length
      if arr[i+1] != nil && arr[i] > arr[i+1]
        sorted = false
        arr.shuffle!
        break
      end
      i += 1
    end
  end
  return arr
end
