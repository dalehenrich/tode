Server
receiverNB: anObject perform: aString withArguments: anArray

"	| ans time |
	time := Time millisecondsToRun: ["
	| ans |
	self class gsCursor showWhile: [
		| address result  |
		self setSession.
		address := self library addressOfArrayOfOopsForObjects: anArray.
		self library
			apiGciNbPerform: anObject asOopType
			a: aString asString
			a: address asInteger
			a: anArray size.
		result := self getNbResultAsOop.
		ans := self library localFor: result].
"	].
	ObjectLog add: #NBPerform->{anObject. aString. time.}."
	^ans