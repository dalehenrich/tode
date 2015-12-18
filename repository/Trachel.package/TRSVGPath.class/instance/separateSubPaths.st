private
separateSubPaths
	| separatedPaths subPath |
	separatedPaths := OrderedCollection new.
	subPath := OrderedCollection new.
	
	curves do: [ :c |
		c key = 'm' ifTrue: [ 
			subPath ifNotEmpty: [ separatedPaths add: subPath ]. 
			subPath:= OrderedCollection new ].
		subPath add: c.
	].
	separatedPaths add: subPath.
	^ separatedPaths