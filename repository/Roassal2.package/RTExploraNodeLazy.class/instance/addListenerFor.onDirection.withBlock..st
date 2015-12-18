as yet unclassified
addListenerFor: anEvent onDirection: aDirection withBlock: aBlock
	| listener |
	
	listener := element.
	iconOpen ifNotNil: [ listener := (Array with: iconOpen with: iconClose) asGroup ].
		
	self addExpansionDirection: aDirection.
	
	block := aBlock.
	
	listener when: anEvent do: [ :event |
		RTPopup removeLastPopup.
		(self isExpandedOnDirection: aDirection)
			ifTrue: [ self collapseOnDirection: aDirection ]
			ifFalse: [ self exploreOnDirection: aDirection ].
			((builder layout rtValue: self)
				translator: (RTSmoothLayoutTranslator new nbCycles: 0.25))
				on: ((builder nodes collect: [ :n | n element ]) asGroup).	
		element view canvas signalUpdate].
	
