built-ins
exit
	self logout.
	self class currentShell: nil.
	shellWindow ifNotNil: [ shellWindow delete ].
	shellWindow := nil.
	console := nil.
	^ nil