hooks
renderIn: view
	|  item |
	
	item := RTBoxPlotItem new.
	item model: model;
		values: self getValuesY.
	
	self renderBoxPlotIn: view item: item.
	self renderBoxPlotLines: view item: item.
	self renderOutliersIn: view item: item.
	self renderDotsIn: view item: item.