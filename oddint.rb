# Find the integer that appears an odd number of times in the given input

def find_it(seq)
  	counts = Hash.new 0

	seq.each do |num|
	  counts[num] += 1
	end
	counts.values.each do |n|
		if n.odd?
			return counts.key(n)
		end
	end

end
