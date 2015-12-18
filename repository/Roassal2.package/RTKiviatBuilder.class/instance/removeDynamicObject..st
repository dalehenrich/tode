adding
removeDynamicObject: anObject

	(objects includes: anObject) ifTrue: [ 
		| kn |
		objects remove: anObject.
		kn := (kiviatNodes detect: [ :k| k named = anObject ]). 	
		view removeElements: kn edgeKiviatElements. 
		view removeElements: kn nodeKiviatElements.
		(kn polygonElement) ifNotNil:  [view removeElement: kn polygonElement].
		kiviatNodes remove: kn.
		
		self view signalUpdate.
	]