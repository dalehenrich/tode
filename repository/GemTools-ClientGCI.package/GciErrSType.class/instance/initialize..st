Private
initialize: aGciLibrary

	library := aGciLibrary.
	address := ExternalAddress gcallocate: self structSize.
	(aGciLibrary apiGciErr: address asInteger) ifFalse: [^self].
	self 
		readSimpleFields;
		readMessage;
		readArguments;
		yourself.
	address := nil.
	library := nil.
