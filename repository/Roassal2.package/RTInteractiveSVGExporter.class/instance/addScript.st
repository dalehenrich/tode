svg
addScript
	stream
		nextPutAll: '    <script><![CDATA[';
		nextPutAll: String cr.
	interactions
		keysAndValuesDo: [ :k :l | 
			l
				do: [ :i | 
					(functions includes: i type)
						ifTrue: [ 
							(i type beginsWith: 'button')
								ifTrue: [ i addContribution: stream ] ]
						ifFalse: [ 
							i addFunctions: stream.
							functions add: i type ] ] ].
	stream nextPutAll: '    ]]></script>'