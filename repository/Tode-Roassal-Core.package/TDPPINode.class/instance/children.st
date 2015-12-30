accessing
children
	children ifNil: [ children := self clientElement ifNotNil: [ :ce | ce childrenFor: self ] ifNil: [ IdentitySet new ] ].
	^ children