*topez-pharo-common
interact
	self isHeadless
		ifTrue: [ ^ self interactHeadless ].
	UIManager default inform: self message.
	^nil