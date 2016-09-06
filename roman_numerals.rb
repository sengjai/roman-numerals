def to_roman(num)
  # Your code here
  value = "" #number that we will return
  letters = ["I","V","X","L","C","D","M"]
  number = [1,5,10,50,100,500,1000]


=begin
  m = num/number[6]
  m.times { value << letters[6]}
  remainder = num % number[6]
  if remainder >= 900
  	a << "CM"
  	remainder = remainder - 900
  end
=end



  if num < 0
  	puts 'Please enter a number that isn\'t negative'
  elsif num == 0
  	puts '0'
  else
  	if num < 5
  		puts insertBefore(num)
  	elsif num > 5
  		puts "V" + insertAfter(num)
  	else
  		puts "V"
  	end
  end
end

def insertBefore(num)
	return "I"*num; # times the value
end

def insertAfter(num)
	return "I"*(num-5); # times the value
end

def letter(num)
	value = num%10
end


# Drive code... this should print out trues.

#puts to_roman(1) == "I"
#puts to_roman(3) == "III"
#puts to_roman(6) == "VI"






# TODO: what other cases could you add to ensure your to_roman method is working?
to_roman(gets.chomp.to_i)