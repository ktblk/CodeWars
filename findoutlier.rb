#Given an array of solely odd or even integers with one number the opposite, find that number (N).

def find_outlier(integers)
	x = []
		integers.each do |i|
			x << i.odd?
		end
	counts = Hash.new 0

	x.each do |tf|
  	counts[tf] += 1
	end
	# p counts
	# p counts.key(counts.values.max)
	if counts.key(counts.values.max) == false
		integers.each do |i|
    		if i.odd?
      			return i
    		end
  		end
  	elsif counts.key(counts.values.max) == true
  		integers.each do |i|
    		if i.even?
      			return i
    		end
  		end
	end
end
