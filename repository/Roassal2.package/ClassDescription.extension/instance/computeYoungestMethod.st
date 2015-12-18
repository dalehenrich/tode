*roassal2
computeYoungestMethod
	| d m ms aMethod |
	ms := self methods, self class methods.
	aMethod := ms anyOne.
	d := aMethod date.
	m := aMethod.
	
	ms do: [ :cm | cm date > d ifTrue: [ m := cm. d := cm date ] ].
	^ m