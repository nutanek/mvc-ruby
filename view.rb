class SortView
	def renderSortForm
		print "Enter set of number: \n"
		strNumbers = gets.chomp
		return strNumbers
	end

	def renderSortInfo(sortedNumbers)
		puts "******** sorted nums ********"
		puts sortedNumbers
	end
end