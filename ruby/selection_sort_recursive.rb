# require 'pry'
def selection_sort_recursive(arr)
  return [] if arr.length == 0
  # make new array
  # sorted = []
  # binding.pry
  #find min and its location
  min = arr.min
  idx = arr.index(min)

  # remove it
  arr.delete_at(idx)
  # add to new array and return new array
  # sorted << min
  # if arr.length == 0
  #   return []
  # else
  #   puts "arr is", arr
    result = selection_sort_recursive(arr)
    result.unshift(min)
  # end
  # return arr.length === 0 ?  sorted : selection_sort_recursive(arr)

  
  # base condition
  # make recursive call, pass shortened array
end

# def selection_sort(arr)
#   sorted = []

#   until arr.length == 0
#     min = arr.min
#     idx = arr.index(min)
#     sorted << min
#     arr.delete_at(idx)
#   end

#   sorted
# end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort_recursive([3, -1, 5, 2])

  puts

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
