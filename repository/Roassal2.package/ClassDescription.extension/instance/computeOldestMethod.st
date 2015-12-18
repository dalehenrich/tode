*roassal2
computeOldestMethod
	| d m |
	d := DateAndTime now.
	m := nil.
	self methods, self class methods do: [ :cm | cm date < d ifTrue: [ m := cm. d := cm date ] ].
	^ m