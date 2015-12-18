hooks
inspectObjectsForWord: word

	^ (tableObjects includesKey: word)
		ifTrue: [ (tableObjects at: word) inspect ]