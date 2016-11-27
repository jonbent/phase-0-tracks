def integer_search(array, number)
  index = 0
  array.each do |variable|
  	if variable == number
  	  return index
    else 
      index += 1
    end
  end
  nil
end

# puts "Whats your number?"
# number = gets.chomp.to_i
# array = [42,2,10,72]

# integer_search(array, number)


def fib(amount_in_sequence)
  sequence = [0,1]
  x = 0
  y = 1 
  while amount_in_sequence > 0
    sequence << sequence[x].to_i + sequence[y].to_i
    amount_in_sequence -= 1
    x += 1
    y += 1
    
  end
  p sequence
end

# need to declare array length, so that the loop swapping integers would run for the length of the array
# need to make a loop that continues over and over until the array has been completely switched
# need to create logic that swaps characters if the first integer is bigger than the one next to it, if not continue to next set of characters in index
# call result after switching all characters
# used "https://rails.devcamp.com/ruby-programming/ruby-algorithms/how-to-implement-the-bubble-sort-algorithm-in-ruby" for reference, coded along with their example for bubble sort.

def bubble(array)
	array_length = array.length
	loop do
		integer_swapped = false
		(array_length - 1).times do |integer|
			if array[integer] > array[integer + 1]
				array[integer], array[integer + 1] = array[integer + 1], array[integer]
				integer_swapped = true
			end
		end
		break if not integer_swapped
	end
	array
end

a = [1, 4, 1, 3, 4, 1, 3, 3]




p bubble(a)