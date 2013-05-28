*topez-client-gemstone
readArgumentsAndExceptionClassUsingStonIn: aTodeSession
  | argsSize ofs expressionStream stonString answerArray objectArray classNameArray Name is exceptionObjInClassNameArray |
  argsSize := self argsSize.
  args := Array new: argsSize.
  expressionStream := WriteStream on: String new.
  expressionStream
    nextPutAll: '(' , aTodeSession todeServerAccessString , ' for: ';
    nextPutAll: aTodeSession shell shellId printString;
    nextPutAll: ') reifyExceptionArgsForOopList: {'.
  ofs := self argsOffset.
  1 to: argsSize do: [ :i | 
    expressionStream
      nextPutAll: (self oopTypeAt: ofs) asOop printString;
      nextPutAll: '. '.
    ofs := ofs + 8 ].
  exceptionObjInClassNameArray := false.
  self exceptionObj
    ifNil: [ 
      exceptionObjInClassNameArray := true.
      expressionStream
        nextPutAll: '} exceptionObjAndClassNameFrom: ';
        nextPutAll: self number asString ]
    ifNotNil: [ 
      expressionStream
        nextPutAll: '} classNamesForOopList: {';
        nextPutAll: self exceptionObj asOop printString;
        nextPut: $} ].
  [ 
  stonString := aTodeSession
    executeStringExpectingStringNB: expressionStream contents
    envId: aTodeSession environmentId ]
    on: Error
    do: [ :ex | self halt ].
  answerArray := STON fromString: stonString.
  objectArray := answerArray at: 1.
  1 to: argsSize do: [ :i | 
    args at: i put: (objectArray at: i).
    ofs := ofs + 8 ].
  classNameArray := answerArray at: 2.
  exceptionObjInClassNameArray
    ifTrue: [ 
      | exceptionObjOop |
      exceptionObjOop := classNameArray at: 1.
      exceptionObj := library oopTypeFromInteger: exceptionObjOop.
      exceptionObjClassName := classNameArray at: 2 ]
    ifFalse: [ 
      classNameArray isEmpty not
        ifTrue: [ exceptionObjClassName := classNameArray at: 1 ] ]