accessing
display: anObject on: displayPolicy
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
            nextPutAll: (Reflection oopOf: anObject) printString;
            nextPutAll: ' sz:';
            nextPutAll: (Reflection sizeOf: anObject) printString;
            space ].
      aStream
        nextPutAll:
            (Text
                string: (Reflection classOf: anObject) name asString
                attribute: TextEmphasis bold);
        nextPutAll: ']';
        space ].
  string := [ 
  limit > 0
    ifTrue: [ anObject printString truncateTo: limit ]
    ifFalse: [ anObject printString ] ]
    on: Error
    do: [ :ignored | 'error printing' ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream
    nextPutAll: (Text string: string attribute: (TextColor color: Color blue))