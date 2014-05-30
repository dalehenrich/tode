accessing
stoneHost

	stoneHost == nil ifTrue: [ stoneHost := self defaultStoneHost ].
	^stoneHost