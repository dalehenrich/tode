private
densityMax: k m: m
	(k >= m) ifTrue: [ ^ 2 - ((k-1)/(m-1)) ].
	^ 1