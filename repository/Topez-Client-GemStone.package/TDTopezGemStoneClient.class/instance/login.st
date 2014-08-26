as yet unclassified
login
	self class addDependent: self.
	^ self loginUsing: self todeSessionClass