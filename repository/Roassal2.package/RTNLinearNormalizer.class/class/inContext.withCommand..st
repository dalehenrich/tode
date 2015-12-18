instance creation
inContext: aCollection withCommand: aBlock
	
	^(self new)
		context: aCollection;
		command: aBlock;
		yourself