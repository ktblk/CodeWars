# Given an array of hashes with the key :name and a value assigned to them, return the names with proper sentax (e.g. [{:name => "Bart"}] returns "Bart", but [{:name => "Bart"}, {:name => "Lisa"}, {:name => "Marge"}] returns: "Bart, Lisa & Marge")

def list(names)
	one = names.length - 1
  array = []
  if names.length == 1
  	 names[0][:name]
  elsif names.length == 2
  	 names[0][:name] + " & " + names[1][:name]
  else
  	lst = names.length - 1
	var = " & " + names[lst][:name]
	names.each do |n|
		array << n[:name]
	end
	 array[0...one].join(", ") + var
  end

end
