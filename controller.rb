class SortController
    def initialize(model, view)
		@model = model
		@view = view
    end
    
    def setNums
		# render form
        strNumbers = @view.renderSortForm()
        
		arrStrNumber = strNumbers.split(" ")
		arrNumber = arrStrNumber.map { |x| x.to_i }
        sortedNumbers = sortArray(arrNumber)
        
		# set info
		@model.setSortedNums(sortedNumbers)
    end
    
    def getNums
		@view.renderSortInfo(@model.getSortedNums())
	end

	def sortArray(unSortedArr)
		arrNum = unSortedArr
		lenNums = arrNum.length
		arrNum.each_with_index do |num1, index|
			min = num1
			count = index+1
			pos = index
			arrNum[index+1, lenNums].each do |num2|
				if num2 < min
					min = num2
					pos = count
				end
				count+=1
			end
			arrNum[index],arrNum[pos] = arrNum[pos],arrNum[index]
		end
		sortedArr = arrNum
		return sortedArr
	end

	private :sortArray
end