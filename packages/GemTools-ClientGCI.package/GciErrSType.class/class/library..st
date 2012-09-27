Instance Creation
library: aGciLibrary

	| instance |
	instance := self new
		initialize: aGciLibrary;
		yourself.
	instance category isNil ifTrue: [^nil].
	^instance.
