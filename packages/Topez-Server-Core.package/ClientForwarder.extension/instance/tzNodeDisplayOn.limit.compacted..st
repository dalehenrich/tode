*topez-server-core
tzNodeDisplayOn: aStream limit: limit compacted: compacted
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  | string |
  aStream
    nextPutAll: '[';
    nextPutAll: (Reflection oopOf: self) printString;
    nextPutAll: ' sz:';
    nextPutAll: (Reflection sizeOf: self) printString;
    space;
    nextPutAll: (Text string: (Reflection classOf: self) name asString attribute: TextEmphasis bold);
    nextPutAll: ']';
    space.
  self printOn: aStream