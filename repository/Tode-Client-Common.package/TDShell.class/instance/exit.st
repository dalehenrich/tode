built-ins
exit
	self logout.
	self class currentShell: nil.
	shellWindow ifNotNil: [ shellWindow delete ].
	^ nil