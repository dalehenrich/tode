private
sortBlock
	
	sortBlock isNil ifTrue: [ sortBlock := self class sortBlock ].
	^sortBlock