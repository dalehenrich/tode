as yet unclassified
addListenerFor: anEvent actions: actions 
	| listener |
	
	listener := element.
	listener when: anEvent do: [ :event |
		TRUtil instance widgetFactory menuForAssociations: actions on: element].
	
