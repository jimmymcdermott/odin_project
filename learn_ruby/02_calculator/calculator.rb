def add(first, second)
	first + second
end

def subtract(first, second)
	first - second
end

def sum(numbers)
	total = 0
	if numbers.length > 0 then
		numbers.each do |x|
			total += x
		end
		return total
	else
		return 0
	end
end

def multiply(numbers)
	total = 1
	if numbers.length > 0
		numbers.each do |x|
			total *= x
		end
		return total
	else
		return 0
	end
end

def power(first, second)
	total = 1
	for num in 1..second
		total *= first
	end
	return total
end