def bubble_sort (seq)
	s=seq.size
	s.times do 
		seq.each_with_index do |x,i|
			break if i==s-1
		if(seq[i]>seq[i+1])
			seq[i],seq[i+1]=seq[i+1],seq[i]
		end

		
	end
end
puts seq
end

def bubble_sort_by (seq)
		s=seq.size

	seq.each_with_index do |x,i|
					break if i==s-1
		res = yield seq[i], seq[i+1]

		if (res >  0)
			seq[i],seq[i+1]=seq[i+1],seq[i]
		end

	end
 puts seq

end



bubble_sort_by(["hi","hello","hey"]) do |left,right|
       left.length - right.length
     end