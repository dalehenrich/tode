printing
displayOnPolicy: displayPolicy
  | string aStream limit displayOops compacted |
  aStream := displayPolicy stream.
  limit := displayPolicy characterLimit.
  displayOops := displayPolicy displayOops.
  compacted := displayPolicy compacted.
  inspectorObject := self inspectorObject: limit.
  displayPolicy minimal
    ifFalse: [ 
      aStream nextPutAll: '['.
      displayOops
        ifTrue: [ 
          aStream
            nextPutAll: inspectorObject oopOf printString;
            nextPutAll: ' sz:';
            nextPutAll: inspectorObject sizeOf printString;
            space ].
      aStream
        nextPutAll:
            (Text string: inspectorObject classOfName attribute: TextEmphasis bold);
        nextPutAll: ']';
        space ].
  string := inspectorObject printString.
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream
    nextPutAll: (Text string: string attribute: (TextColor color: Color blue))