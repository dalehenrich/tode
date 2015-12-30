private
colorConditions

	self builder shape			
		if: [ :nde | nde isRoot ] fillColor: (Color red alpha: 0.5);
		if: [ :nde | nde isLeaf ] fillColor: (Color green alpha: 0.5).