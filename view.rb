class SortView
	def renderUserForm
		print "Enter set of number: \n"
		strNumbers = gets.chomp
		return strNumbers
	end

	def renderUserInfo(sortedNumbers)
		puts "******** sorted nums ********"
		puts sortedNumbers
	end
end