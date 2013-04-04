as yet unclassified
printOn: aStream
  "Puts a displayable representation of the receiver on the given
stream. If the key or the value is identical to the receiver then
avoid an infinite recursion. (There is currently no general way to
limit these kinds of recursions. See Bug #16259)"

  key == self
    ifTrue: [ aStream nextPutAll: 'anAssociation' ]
    ifFalse: [ key printOn: aStream ].
  aStream nextPutAll: '->'.
  self _value == self
    ifTrue: [ aStream nextPutAll: 'anAssociation' ]
    ifFalse: [ self _value printOn: aStream ]