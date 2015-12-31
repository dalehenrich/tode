private
colorConditions
	self builder shape
		if: [ :nde | nde wrapper isRoot ] fillColor: (Color red alpha: 0.5);
		if: [ :nde | nde wrapper isLeaf ] fillColor: (Color green alpha: 0.5);
		if: [ :nde | nde wrapper isDone not ] fillColor: (Color brown alpha: 0.5)