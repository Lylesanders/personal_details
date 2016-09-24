def add(*numbers)					# the * in the parameter passes value into an array splats
	sum = 0							# set sum to 0 to clear accumulator
	numbers.each do |number|		#set up a do loop for the array numbers
		sum=sum + number			# add the accumulator
	end								# end the loop
	sum								# sum to pass back to the function
end