testing
isRoot
	parents ifNil: [ ^ false ].
  ^ self parents isEmpty