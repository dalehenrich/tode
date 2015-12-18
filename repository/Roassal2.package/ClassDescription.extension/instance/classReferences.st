*roassal2
classReferences
	| references |
	references := OrderedCollection new.
	self methodDict valuesDo: [ :compiledMethod |
			references addAll: compiledMethod classReferences ].
	^ references removeDuplicates