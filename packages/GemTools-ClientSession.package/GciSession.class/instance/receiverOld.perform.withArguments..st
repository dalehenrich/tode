Server
receiverOld: anObject perform: aString withArguments: anArray

"	| ans time |
	time := Time millisecondsToRun: ["
	| ans |
	self class gsCursor showWhile: [
		| address |
		self setSession.
		address := self library addressOfArrayOfOopsForObjects: anArray.
		ans := self processResult: (self library
				apiGciPerform: anObject asOopType
				a: aString asString
				a: address asInteger
				a: anArray size)].
"	].
	ObjectLog add: #OldPerform->{aString. time}."
	^ans