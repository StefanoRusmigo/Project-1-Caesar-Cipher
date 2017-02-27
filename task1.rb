def cipher (text, shift)
	text.downcase!
	i=0
	full = []
	letters =text.split("")

	letters.each do |char|


	if ("a".."z").cover?(char) 
		char = char.ord
		char += shift


			if (char>122) 
				char -= 97
				char %= 26
				char += 97
			end
	end

		char= char.chr
		
		full[i]=char
		i += 1
	end
		full.join
	
	
end



puts cipher("aBc D!e F", 1)
