accessing context
currentContext
	^ self selectedContext
		ifNil: [ self session stack at: 1 ]
		ifNotNil: [ self selectedContext ]