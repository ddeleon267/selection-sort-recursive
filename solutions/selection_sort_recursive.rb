def selection_sort_recursive(arr)
  return [] if arr.empty? # stop once there are no more items

  min = arr.min # find min value  
  idx = arr.index(min) # find location of min value
  arr.delete_at(idx) # remove min val from original
  
  result = selection_sort_recursive(arr) ## pass subsequent values and repeat
  result.unshift(min) # adds minimum back to new array, at beginning
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print selection_sort_recursive([3, -1, 5, 2])

  puts

  puts "Expecting: [5]"
  print selection_sort_recursive([5])

  puts

  puts "Expecting: [-1, 2, 2, 3, 3, 5]"
  print selection_sort_recursive([3, 2, -1, 3, 5, 2])

  puts

  puts "Expecting: [3, 5]"
  print selection_sort_recursive([5, 3])

  puts

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
#################################################################################
# return empty array if array is empty
#
# find smallest value in array and store it in min
# find index of smallest value and store it in idx
# remove the smallest value from the array
#
# recurse through the array and store the result in result
# place the min from each frame at the front of the array
# return result
#################################################################################

# And a written explanation of your solution
#################################################################################
# Once again, it's easier to start with the base case: if the array is empty, return
# an empty array. We can then add items to this returned empty array in the previous
# frames. To figure out what to add, we need to find the minimum value in the array
# and its index. Next, we remove that value from the array and pass the array to the
# recursive call. This means that as we go deeper and deeper into the stack, the
# array gets smaller, until it's empty. Since frames are completed in last in first out
# order, we need to add the minimum value from each frame to the front of the result
# array. For example, if the array is [2, 1], the minimum in the first frame is 1, and
# the recusrive call is made with the argument [2]. In this frame the minimum is 2, so
# the recursive call is now made with the argument []. This hits the base case, which
# returns []. result is now an empty array in the previous frame. On the next line, the
# minimum, which is 2, gets unshifted on. [2] is returned up the stack, and stored in
# result. Here, the minimum is 1, which gets unshifted on, resulting in [1, 2].
#################################################################################