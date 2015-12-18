as yet unclassified
dataFor: dim stack: s.
	^ s stack: ( (1 to: dim y) collect: [:n | self class bumpLayer: dim x ] )