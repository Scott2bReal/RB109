\arr = [1, 2, 3, 4, 5]
new_arr = []

index = 0

loop do
  new_arr << arr[index] * 2
  index += 1
  break if index == arr.size
end

p new_arr
