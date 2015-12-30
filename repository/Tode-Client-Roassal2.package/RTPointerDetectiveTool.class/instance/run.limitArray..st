as yet unclassified
run: oopText limitArray: anOopArrayText
	|b anim |
	self assert: (oopText isNotNil) description: 'No oop or not integer'.
	self view clean.
	b := (true ifTrue: [RServerPointerDetective02] ifFalse: [RServerPointerDetective]) new. 
	b view: view.
	anOopArrayText isEmpty ifTrue: [
		b onServerFindAllReferencePathsToObject: (oopText asInteger)  shell: (self workspace tdShell)
		] ifFalse: [
		b onServerFindAllReferencePathsToObject: (oopText asInteger) limitObjArray: (anOopArrayText asArray)  shell: (self workspace tdShell)
		].
	
	b builder addListenerBlock: [:n | 
		anim := RTNopAnimation new.
		anim waitFor: 0.3 after: [  
			b2 notifyWith: n element.
			b1 notifyWith: n element. 
			].
		b builder view addAnimation: anim.
	].
	self view signalUpdate.