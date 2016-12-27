tests
testEffectiveAPIVersion
	| x |
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			self assert: (x := shell topez effectiveApiVersion) = '1.5.0' asMetacelloVersionNumber ]