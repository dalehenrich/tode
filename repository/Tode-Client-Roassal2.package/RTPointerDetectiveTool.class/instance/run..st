as yet unclassified
run: oopText
	|b anim|
	self assert: (oopText isNotNil) description: 'No oop or not integer'.
	self view clean.
	b := RServerPointerDetective02 new. 
	b view: view.
	b shell: (self workspace tdShell); on:(oopText asInteger).
		
	b builder addListenerBlock: [:n | 
		anim := RTNopAnimation new.
		anim waitFor: 0.3 after: [  
			b2 notifyWith: n element.
			b1 notifyWith: n element. 
			].
		b builder view addAnimation: anim.
	].
	self view signalUpdate.
