as yet unclassified
printOn: aStream
  | op |
  op := ' c '.
  self editOp = 'M'
    ifFalse: [ op := '[' , self editOp , ']' ].
  aStream nextPutAll: op , self label , '(' , self selection asString , ')'