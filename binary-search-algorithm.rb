def binary_search(obj, arr)
  if arr.length % 2 == 0
    half = (arr.length/2).floor
  else
    half = arr.length/2
    p half
  end
  if obj == arr[half]
    return true
  elsif half == 0
    return false
  elsif obj < arr[half]
    first_half = arr[0..half]
    binary_search(obj, first_half)
  else
    second_half = arr[half+1..-1]
    binary_search(obj, second_half)
  end
end


binary_search(5, [1,2,3]) == false
binary_search(5, [1,2,3,5]) == true

