as yet unclassified
printOn: aStream
  | op |
  labelString
    ifNotNil: [ 
      aStream nextPutAll: labelString.
      ^ self ].
  op := ' c '.
  self editOp = 'M'
    ifFalse: [ op := '[' , self editOp , ']' ].
  aStream nextPutAll: op , self label , ' (' , self selection asString , ')'