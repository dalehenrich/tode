public
numberOfColors: anInteger command: aSymboOrBlock  scope: aCollection

	^ self new
		numberOfBuckets: anInteger;
		command: aSymboOrBlock;
		scope: aCollection.