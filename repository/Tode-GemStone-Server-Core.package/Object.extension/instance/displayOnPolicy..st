*tode-gemstone-server-core
displayOnPolicy: displayPolicy
  | string aStream limit displayOops compacted |
  aStream := displayPolicy stream.
  limit := displayPolicy characterLimit.
  displayOops := displayPolicy displayOops.
  compacted := displayPolicy compacted.
  displayPolicy minimal
    ifFalse: [ 
      aStream nextPutAll: '['.
      displayOops
        ifTrue: [ 
          aStream
            nextPutAll: (Reflection oopOf: self) printString;
            nextPutAll: ' sz:';
            nextPutAll: (Reflection sizeOf: self) printString;
            space ].
      aStream
        nextPutAll:
            (Text
                string: (Reflection classOf: self) name asString
                attribute: TextEmphasis bold);
        nextPutAll: ']';
        space ].
  string := [ 
  limit > 0
    ifTrue: [ self printString truncate: limit ]
    ifFalse: [ self printString ] ]
    on: self printExceptionSet
    do: [ :ignored | 'error printing' ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream
    nextPutAll: (Text string: string attribute: (TextColor color: Color blue))