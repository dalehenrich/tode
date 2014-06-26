private
testResultsPrintString
  | aStream |
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
  ^ aStream contents