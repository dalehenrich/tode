as yet unclassified
addListenerFor: anEvent actions: actions 
	| listener |
	
	listener := element.
	iconOpen ifNotNil: [ listener := (Array with: iconOpen with: iconClose) asGroup ].
		
	self addExpansionDirection: #LeftClick -> #From.
	
	listener when: anEvent do: [ :event |
		TRUtil instance widgetFactory menuForAssociations: actions on: self ].
	
