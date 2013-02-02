*topez-server-core
displayOn: aStream limit: limit displayOops: displayOops compacted: compacted
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
  string := [ 
  limit > 0
    ifTrue: [ self printString truncate: limit ]
    ifFalse: [ self printString ] ]
    on: Error
    do: [ :ignored | 'error printing' ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream nextPutAll: (Text string: string attribute: (TextColor color: Color blue))