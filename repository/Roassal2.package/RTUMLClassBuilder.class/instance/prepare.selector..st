private
prepare: builder selector: selector
	builder shape class = RTNoShape ifTrue: [ 
		builder label height: self fontSizeOfMembers ].
	builder text: [ :obj | (self perform: selector) rtValue: obj ].
	