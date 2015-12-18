*roassal2
dependentClasses
	"Return the list of classes used myself"
	
	"(Morph>>#drawOn:) dependentClasses"
	| cll | 
	cll := Set new.
	
	"We unify a class and its metaclass"
	self literalsDo: [ :l | 
					"We also check if the method is not an extension"
					((l isVariableBinding 
					and: [ l value notNil ]) 
					and: [ l value isBehavior ])  ifTrue: [ cll add: l value ] ].
	^ cll asArray