*topez-common-core
tzNodeDisplayOn: aStream limit: limit compacted: compacted
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
  string := [ 
  limit > 0
    ifTrue: [ self printString truncate: limit ]
    ifFalse: [ self printString ] ]
    on: Error
    do: [ :ignored | 'error printing' ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream nextPutAll: (Text string: string attribute: (TextColor color: Color blue))