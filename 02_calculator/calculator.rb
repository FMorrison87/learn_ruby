def add(number1, number2)
	number1 + number2
end

def subtract(number1, number2)
	number1 - number2
end

def sum(number)
	total = 0
	if number.count <= 1
		number.join(',').to_i
	else number.inject(0) { |total,a| total + a }
	end
end

def multiply(number)
	total = 1
	number.inject(1) do |total, a|
		total * a
	end
end

def power(number1, number2)
	number1 ** number2
end	

def factorial(number)
	if number <= 2
		number = number
	else
		number * factorial(number-1)
	end
end

