# area codes

# do you want to look up an area codes
# Y n
# list of keys
# enter selection
# multiple loops until exitexit on any key that is not Y

area_index = {
  "qld" => "07",
  "nsw" => "02",
  "act" => "02",
  "mobile" => "04",
  "wa" => "08",
  "sa" => "08",
  "nt" => "08"
}

def get_area_names (areas)
  # areas.each {|key, value|
  #   puts key
	# }
	areas.keys
end

def get_area_code (areas, request)
	# areas.each {|key, value|
	# 	if key == request
	# 		return value
	# 	end
	# }
	areas[request]
end

loop do
  puts "\nDo you want to lookup an area code based on a state/territory name?(Y/N)"
  response = gets.chomp.downcase
  break if response != "y"
	puts
	puts get_area_names(area_index)
	puts "\nWhich state/territory would you like to check?"
  request = gets.chomp.downcase

	# Shifting the check prior to the method allows lighter weight functions
	if area_index.include?(request)
		20.times { print "-" }
		puts "\nThe area code for #{request} is #{get_area_code(area_index, request)}"
		20.times { print "-" }
	else 
		puts "\n#{request} is not a valid area"
	end 
end