# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	result = Array.new
	string.size.times do |item|
		if string[item] == 'r' || string[item] == 'R'
			result << string[item + 1]
	end
end
result.join
end

#check if useful: create a conditional for each |char| if == r => next