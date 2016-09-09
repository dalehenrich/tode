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
            nextPutAll: (inspectorObject at: 'oopOf') printString;
            nextPutAll: ' sz:';
            nextPutAll: (inspectorObject at: 'sizeOf') printString;
            space ].
      aStream
        nextPutAll:
            (Text string: (inspectorObject at: 'classNameOf') attribute: TextEmphasis bold);
        nextPutAll: ']';
        space ].
  string := inspectorObject at: 'displayString'.
  string ifNil: [ string := inspectorObject printString ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream
    nextPutAll: (Text string: string attribute: (TextColor color: Color blue))