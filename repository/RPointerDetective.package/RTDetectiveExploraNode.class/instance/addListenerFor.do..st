as yet unclassified
addListenerFor: anEvent do: aBlock
	| listener |
	listener := element.
	iconOpen ifNotNil: [ listener := (Array with: iconOpen with: iconClose) asGroup ].
	listener when: anEvent do: [ :event | aBlock value: self ]