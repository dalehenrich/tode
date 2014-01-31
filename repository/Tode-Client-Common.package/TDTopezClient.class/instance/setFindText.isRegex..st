as yet unclassified
setFindText: aStringOrText isRegex: isRegex
	| findText service |
	findText := aStringOrText.
	service := FindReplaceService default.
	isRegex
		ifTrue: [ service findText: findText isRegex: true ]
		ifFalse: [ 
			(aStringOrText indexOf: $:) > 0
				ifTrue: [ 
					| pattern specials |
					pattern := WriteStream on: String new.
					specials := '^$:\+*[]()'.
					aStringOrText keywords
						do: [ :arg | 
							| convertedArg |
							convertedArg := String
								streamContents: [ :s | 
									arg
										do: [ :c | 
											(specials includes: c)
												ifTrue: [ s nextPut: $\ ].
											s nextPut: c ] ].
							pattern nextPutAll: convertedArg ]
						separatedBy: [ pattern nextPutAll: '[^:]+' ].
					service findText: pattern contents isRegex: true ]
				ifFalse: [ service findText: findText isRegex: false ] ].
	service changed: #newFinding.
	^ nil