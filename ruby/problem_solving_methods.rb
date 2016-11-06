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