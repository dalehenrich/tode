metacello
selectorsForClass: aClass inClass: classBoolean level: level

	| targetClass result |
	targetClass := classBoolean 
		ifTrue: [ aClass class ] 
		ifFalse: [ aClass ].
	result := targetClass selectors sort collect: [:selector | 
		TZMethodElement new
                proxyClass: targetClass ;
                selector: selector asString;
			isMeta: classBoolean ;
			setSource;
                yourself ].
	^self toString: result level: level