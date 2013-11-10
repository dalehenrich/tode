as yet unclassified
topez: aTopez objIn: anObject todeCommand: aTDCommandLine
  | tokens |
  tokens := aTDCommandLine ifNil: [ #() ] ifNotNil: [ aTDCommandLine tokens ].
  ^ self new
    topez: aTopez;
    objIn: anObject;
    tokens: tokens;
    todeCommand: aTDCommandLine;
    yourself