*Topez-Common-Pharo-Core
interact
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	^ UIManager default
		multiLineRequest: self prompt
		initialAnswer: self template
		answerHeight: 200