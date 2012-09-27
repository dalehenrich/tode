Private
nbOopResult

	[
		[
			^self getNbResultAsOop.
		] on: Error do: [:ex | 
			self halt.
		].
		true.
	] whileTrue: [].
