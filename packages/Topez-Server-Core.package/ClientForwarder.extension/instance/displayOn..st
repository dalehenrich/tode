*topez-server-core
displayOn: displayPolicy
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  | string aStream displayOops compacted limit pStream |
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
        nextPutAll: (Text string: (Reflection classOf: self) name asString attribute: TextEmphasis bold);
        nextPutAll: ']';
        space ].
  pStream := WriteStream on: String new.
  self printOn: pStream.
  string := pStream contents.
  (limit > 0 and: [ string size > limit ])
    ifTrue: [ string := (string copyFrom: 1 to: limit) , '...' ].
  compacted
    ifTrue: [ string := string withSeparatorsCompacted ].
  aStream nextPutAll: (Text string: string attribute: (TextColor color: Color blue))