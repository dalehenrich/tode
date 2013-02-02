*topez-server-core
displayOn: aStream limit: limit displayOops: displayOops compacted: compacted
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  | string |
  aStream nextPutAll: '['.
  displayOops
    ifTrue: [ 
      aStream
        nextPutAll: (Reflection oopOf: self) printString;
        nextPutAll: ' sz:';
        nextPutAll: (Reflection sizeOf: self) printString;
        space ].
  aStream
    nextPutAll: (Text string: (Reflection classOf: self) name asString attribute: TextEmphasis bold);
    nextPutAll: ']';
    space.
  self printOn: aStream