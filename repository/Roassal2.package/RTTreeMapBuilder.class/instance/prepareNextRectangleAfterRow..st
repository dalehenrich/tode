layout-utils
prepareNextRectangleAfterRow: row
	| nextRect |
	nextRect := self rectangle currentSubrectangle computeRemainingSubrectangleFrom: row.
	self rectangle addSubrectangle: nextRect