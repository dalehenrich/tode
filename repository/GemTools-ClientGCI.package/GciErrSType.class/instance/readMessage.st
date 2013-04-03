Private
readMessage

	| stream i char |
	stream := WriteStream on: String new.
	i := self startOfMessage.
	[
		char := (address byteAt: i).
		i := i + 1.
		char = 0.
	] whileFalse: [
		stream nextPut: (Character value: char).
	].
	message := stream contents
		copyReplaceAll: Character lf asString
		with: Character cr asString.
