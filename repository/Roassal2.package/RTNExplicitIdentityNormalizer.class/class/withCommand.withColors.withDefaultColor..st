instance creation
withCommand: aBlock withColors: aCollection withDefaultColor: aColor
	
	^(self withCommand: aBlock)
		colors: aCollection;
		defaultColor: aColor;
		yourself