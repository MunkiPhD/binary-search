class BinarySearch

	def chop(value, array)
		# check for null values
		if (value == nil) || (array == nil)
			return -1
		end

		# make sure that the array isn't empty
		if array.empty?
			return -1
		end

		return chop_helper(value, array, 0, array.length-1)
	end	

	private 

	def chop_helper(value, array, left, right)
		# Since the array is sorted, we can choose the pivot as the midpoint
		# floor it in case the number is odd, or 1. If we dont floor for a length of 1, we could end up looking in position [1]

		pivot = (right + left) / 2
		puts "Pivot: #{pivot}, left: #{left}, right: #{right}"

		# if we reach a point where the left is larger than the right, check the spot of left + right (this will only happen on even count arrays)
		if left > right
			if array[left+right] == value
				return (left+right)
			else
				return -1
			end
		end

		if value < array[pivot]
			return chop_helper(value, array, left, pivot - 1)
		elsif value > array[pivot]
			return chop_helper(value, array, pivot + 1, right)
		else
			return pivot
		end
	end
end
