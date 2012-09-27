Server
receiver: anOopType perform: aString with: anObject

	^self
		receiver: anOopType 
		perform: aString
		withArguments: (Array with: anObject).
