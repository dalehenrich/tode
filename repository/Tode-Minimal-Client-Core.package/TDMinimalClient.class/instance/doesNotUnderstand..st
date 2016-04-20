services registry
doesNotUnderstand: aMessage
	| serviceBlock |
	serviceBlock := self servicesRegistry at: aMessage selector ifAbsent: [ ^ super doesNotUnderstand: aMessage ].
	^ serviceBlock valueWithEnoughArguments: aMessage arguments , {self}