*topez-pharo-common
interact
	| choice |
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	choice := UIManager default
		confirm: self prompt
		trueChoice: self confirm
		falseChoice: self cancel.
	^ choice
		ifNil: [ false ]
		ifNotNil: [ choice ]