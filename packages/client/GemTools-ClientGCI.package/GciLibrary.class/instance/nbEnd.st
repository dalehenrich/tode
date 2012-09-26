Wrapper
nbEnd
	"The call that initiated the non-blocking call will be one of three types:
		1. expecting nothing--e.g., GciNbAbort();
		2. expecting a Boolean--e.g., GciNbCommit();
		3. expecting an OopType--e.g., GciNbExecuteStr().
	Because we don't know how the answer should be interpreted, we simply
	return the result as an Integer."

	| progress address result |
	nbEndAddress isNil ifTrue: [
		nbEndAddress := ExternalAddress gcallocate: 4.
	].
	nbEndAssociation isNil ifTrue: [
		nbEndAssociation := Association new.
	].
	progress := self apiGciNbEnd: nbEndAddress asInteger.
	progress = 2 ifTrue: [
		address := ExternalAddress new
			fromInteger: (nbEndAddress unsignedLongAt: 1);
			yourself.
		result := self oopNumberAtAddress: address.
	].
	^nbEndAssociation
		key: progress;
		value: result;
		yourself.
