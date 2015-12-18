private - utility
setsComputeMinAndMax
	"We are here compute the minimum and maximum of the timeline (X-axis, Y-axis)"
	| globalMin globalMax |
	self numberOfSets = 0 ifTrue: [ ^ self ].
	
	globalMin := (sets collect: #localMin) min.
	globalMax := (sets collect: #localMax) max.
	
	sets do: [ :s | s globalMin: globalMin ].
	sets do: [ :s | s globalMax: globalMax ].
	
	self maxX: globalMax.
	self maxY: self numberOfLines.
