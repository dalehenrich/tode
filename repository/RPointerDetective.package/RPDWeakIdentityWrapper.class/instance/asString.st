as yet unclassified
asString
	 ^ 'a' , self wrappedObject class name asString, ', ', self hash printString, ', ', self wrappedObject asString.