as yet unclassified
printOn: aStream
  | op postfix |
  op := self selectedOperation.
  postfix := op isAddition
    ifTrue: [ ' (Added)' ]
    ifFalse: [ 
      op isRemoval
        ifTrue: [ ' (Removed)' ]
        ifFalse: [ ' (Changed)' ] ].
  aStream nextPutAll: op definition summary , postfix