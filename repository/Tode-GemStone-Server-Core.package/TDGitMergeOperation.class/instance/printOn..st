as yet unclassified
printOn: aStream
  aStream
    nextPutAll: self labelString;
    space;
    nextPutAll: self filePath , ' (' , self selection asString , ')'