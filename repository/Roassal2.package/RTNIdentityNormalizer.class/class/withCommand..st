instance creation
withCommand: aBlock
	
	^(self new)
		command: aBlock;
		yourself