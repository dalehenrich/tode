computing
lengthenBy: val
	| mag |
	mag := self magnitude.
	self scaleBy: ((mag + val)/ mag)