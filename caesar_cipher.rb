def caesar_cipher(i, shift)
	letters = i.split("")
	numbers = []
	cipher = []
	letters.each do |letter|
		a = letter.ord
		numbers.push(a)
	end
	numbers.each do |num|
		if num >= 97 && num <= 122
			num += shift
			if num > 122
				num -= 26
			end
		elsif num >= 65 && num <= 90
			num += shift
			if num > 90
				num -= 26
			end
		end
		cipher.push(num.chr)
	end
	puts cipher.join
end

puts "Enter your message"
x = gets.chomp
puts "shift by?"
y = gets.chomp.to_i
puts "your coded message:"
caesar_cipher(x, y)

