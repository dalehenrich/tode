overrides
initialize
"
	GciLibrary initialize.
"
	NullPtr := ExternalAddress new beNull asByteArrayPointer.
	Smalltalk addToStartUpList: self.
