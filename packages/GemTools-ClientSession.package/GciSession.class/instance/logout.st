Library
logout

	number isNil ifTrue: [^self].
	[self setSession.
	self isCallInProgress ifTrue: [self hardBreak].
	self library apiGciLogout.]
		on: Error
		do: [:ex | 
			"just continue with the logout"
			self release.
			Transcript cr; show: ex printString.
			ex return: nil].
	self release.
	