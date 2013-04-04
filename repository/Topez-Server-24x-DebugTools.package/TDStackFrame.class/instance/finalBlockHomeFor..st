as yet unclassified
finalBlockHomeFor: aTDStackFrame

	(self receiver isKindOf: ExecutableBlock) 
		ifFalse: [
			aTDStackFrame frameSelfSlot == nil
				ifTrue: [ aTDStackFrame method == self method ifTrue: [ ^self ] ]
				ifFalse: [
					((aTDStackFrame frameSelfSlot == self receiver) 
						and: [aTDStackFrame method == self method]) ifTrue: [ ^self ]]].
	self next == nil ifTrue: [ ^self ].
	^self next finalBlockHomeFor: aTDStackFrame