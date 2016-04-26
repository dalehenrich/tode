accessing context
currentContext

	^self selectedContext 
		ifNil: [ self session stack at: self session initialStackFrameIndex ] 
		ifNotNil:  [ self selectedContext  ]