metacello
methodElementFor: aBehavior selector: selector level: level

	^self 
		methodElementForClass: aBehavior theNonMetaClass 
		isMeta:  aBehavior isMeta 
		selector: selector
		level: level