accessing
name

	^name == nil
		ifTrue: [ self class label ]
		ifFalse: [ name ]