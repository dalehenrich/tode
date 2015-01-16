*topez-pharo-common
interact
	| choice |
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	self abort isNil
		ifTrue: [ 
			choice := UIManager default confirm: self prompt trueChoice: self confirm falseChoice: self cancel.
			^ choice ifNil: [ false ] ifNotNil: [ choice ] ]
		ifFalse: [ 
			^ UIManager default
				confirm: self prompt
				trueChoice: self confirm
				falseChoice: self cancel
				cancelChoice: self abort
				default: nil ]