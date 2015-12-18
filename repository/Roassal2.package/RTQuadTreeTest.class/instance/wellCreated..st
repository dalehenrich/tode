util
wellCreated: aQuad

	aQuad leaf ifTrue: [ aQuad node isNil ifTrue: [ ^ true ]
										   ifFalse: [ ^ (Rectangle origin: aQuad origin corner: aQuad corner) contains: aQuad node position ] ] 
				ifFalse: [ aQuad node isNil ifTrue: [ ^ aQuad nodes allSatisfy: [ :e | self wellCreated: e ] ] 
										    ifFalse: [ ^ ((Rectangle origin: aQuad origin corner: aQuad corner) contains: aQuad node position) & (aQuad nodes allSatisfy: [ :e | self wellCreated: e ]) ] ]