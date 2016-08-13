*Topez-Common-Pharo-Core
interact
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	^ UIManager default
		chooseFrom: self labels
		values: self values
		lines: self lines
		title: (self prompt ifNil: [ '' ])