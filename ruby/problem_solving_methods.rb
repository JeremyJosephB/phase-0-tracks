arr = [42, 89, 23, 1]

def take_array(array, integer) 
  index = 0
  
  array.each do |i|
    if i == integer
      p index
    else
      index += 1
    end
  end
end

# p take_array(arr,1)


def fib(integer)

fib_arr = [0,1]

index = 2
	until index == integer 
	next_number = fib_arr[-1] + fib_arr[-2]
	fib_arr << next_number
	index += 1
	end
	puts fib_arr
end

fib(100)

# pseudocode for insertion sort algorithm
# 1. look at first index
# 2. that one index will be the first sorted index
# 3. the next index in the unsorted array will be compared with
#    indexes of the sorted array.
# 4. the condition IF the unsorted element is greater than the sorted element
#    it will be put after the sorted element.
# 5. OTHERWISE the unsorted element will be placed before the sorted element
# 6. continue until all elements are sorted.

def insertion_sort(array)
    final = [array[0]]
    array.delete_at(0)
    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    final
end
array = [1, 5, 3, 4, 6, 3]
puts insertion_sort(array)