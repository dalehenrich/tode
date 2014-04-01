*tode-gemstone-server-core
printNonRecursiveRepresentationOn: aStream recursionSet: anIdentitySet
  "Put a displayable representation of the receiver on the given stream
	 while avoiding recursion from object reference loops."

  | count sz |
  super printOn: aStream recursionSet: anIdentitySet.
  aStream nextPutAll: '#[ '.
  count := 1.
  sz := self size.
  self
    do: [ :anElement | 
      anElement printOn: aStream recursionSet: anIdentitySet.
      count < sz
        ifTrue: [ aStream nextPutAll: ' ' ].
      count := count + 1 ].
  aStream nextPut: $]