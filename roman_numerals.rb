
def to_roman(num)
	value = ""
	while num > 0 do
		if num >= 1000
			value = "M"
			num = num - 1000
		elsif num >= 500
			value = value + "D"
			num = num - 500
		elsif num >= 100
			value = value + "C"
			num = num - 100
		elsif num >= 50
			value = value + "L"
			num = num - 50
		elsif num >= 10
			value = value + "X"
			num = num - 10
		elsif num >= 9
			value = value + "IX"
			num = num - 10	
		elsif num >= 5
			value = value + "V"
			num = num - 5
		elsif num == 4
			value = value +"IV"
			num = num - 4
		else 
			value = value + "I"
			num = num - 1
		end
	end

	p value

end

to_roman(gets.chomp.to_i)
#puts to_roman(6) == "VI"