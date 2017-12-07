load 'model.rb'
load 'view.rb'
load 'controller.rb'

begin
	model = SortModel.new
	view = SortView.new
	controller = SortController.new(model, view)
	controller.setNums()
	controller.getNums()
end