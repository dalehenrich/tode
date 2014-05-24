as yet unclassified
printOn: aStream
  labelString
    ifNotNil: [ 
      aStream nextPutAll: labelString.
      ^ self ].
  aStream nextPutAll: self filePath , '(' , self selection asString , ')'