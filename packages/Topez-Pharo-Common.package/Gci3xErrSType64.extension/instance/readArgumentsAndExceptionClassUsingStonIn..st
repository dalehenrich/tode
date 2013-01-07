*topez-pharo-common
readArgumentsAndExceptionClassUsingStonIn: aTodeSession
  | argsSize ofs expressionStream stonString answerArray objectArray classNameArray |
  Transcript
    cr;
    show: 'Gci3xErrSType64>>readArgumentsAndExceptionClassUsingStonIn: ' , self message printString.
  argsSize := self unsignedLongAt: 109.
  args := Array new: argsSize.
  10 < argsSize
    ifTrue: [ self error: 'Argument count too high!' ].
  expressionStream := WriteStream on: String new.
  expressionStream
    nextPutAll: '(TDTopezServer for: ';
    nextPutAll: aTodeSession shell shellId printString;
    nextPutAll: ') reifyExceptionArgsForOopList: {'.
  ofs := 25.
  1 to: argsSize do: [ :i | 
    expressionStream
      nextPutAll: (self oopTypeAt: ofs) asOop printString;
      nextPutAll: '. '.
    ofs := ofs + 8 ].
  expressionStream
    nextPutAll: '} classNamesForOopList: {';
    nextPutAll: exceptionObj asOop printString;
    nextPut: $}.
  stonString := aTodeSession executeStringExpectingStringNB: expressionStream contents.
  answerArray := STON fromString: stonString.
  objectArray := answerArray at: 1.
  1 to: argsSize do: [ :i | 
    args at: i put: (objectArray at: i).
    ofs := ofs + 8 ].
  classNameArray := answerArray at: 2.
  exceptionObjClassName := classNameArray at: 1