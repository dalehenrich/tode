private
testResultsPrintString
  | aStream attributes |
  aStream := WriteStream on: String new.
  aStream
    nextPutAll: run size printString;
    nextPutAll: ' run, ';
    nextPutAll: expectedPasses size printString;
    nextPutAll: ' passes, ';
    nextPutAll: expectedDefects size printString;
    nextPutAll: ' expected defects, ';
    nextPutAll: unexpectedFailures size printString;
    nextPutAll: ' failures, ';
    nextPutAll: unexpectedErrors size printString;
    nextPutAll: ' errors, ';
    nextPutAll: unexpectedPasses size printString;
    nextPutAll: ' unexpected passes'.
  attributes := {}.
  self currentTestCase = 'done'
    ifTrue: [ 
      self hasPassed
        ifTrue: [ attributes add: TextColor green ]
        ifFalse: [ attributes add: TextColor red ] ]
    ifFalse: [ 
      run size > 0
        ifTrue: [ attributes add: TextColor blue ]
        ifFalse: [ attributes add: TextColor gray ] ].
  ^ Text string: aStream contents attributes: attributes