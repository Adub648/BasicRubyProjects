# frozen_string_literal: true

def bubble_sort(array)
  n = array.length
  until n < 1

    # default values
    newn = 0
    i = 1
    n -= 1

    # for the array length
    n.times do
      # if numbers are unordered, swap
      if array[i - 1] > array[i]
        array[i], array[i - 1] = array[i - 1], array[i]
        newn = i
      end
      # move to next number
      i += 1
    end
    # show where last swap occured, to speed up processing
    n = newn
  end
  # output
  p array
end

bubble_sort([4, 3, 78, 2, 0, 2])

# pseudocode
# function bubble_sort()
#     n = length(array)
#     until n < 1
#         newn = 0
#         for i = 1 to n - 1 do
#             if array[i - 1] > array[i]
#                 swap the two
#                 newn = i
#             end
#         end
#         n = newn
#     end
