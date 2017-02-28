def substrings (search, dictionary)

search.downcase!
#search = search.split(/\W+/)
s_count=Hash.new(0)

	dictionary.each do |f_word|
		if(search.include? f_word)
			s_count[f_word]+=1
		
		end

	end
puts s_count

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)