accessing
gemstoneVersion
	gemstoneVersion ifNil: [ gemstoneVersion := self defaultGemstoneVersion ].
	^ gemstoneVersion