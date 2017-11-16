Formatting
printOn: aStream
  aStream
    nextPutAll: self testResultsPrintString;
    cr;
    tab;
    nextPutAll: tests size printString , ' tests';
    cr;
    tab;
    nextPutAll: run size printString , ' run';
    cr;
    tab;
    nextPutAll: expectedPasses size printString , ' passes';
    cr;
    tab;
    nextPutAll: expectedDefects size printString , ' expected defects';
    cr;
    tab;
    nextPutAll: unexpectedFailures size printString , ' failures'.
  (unexpectedFailures collect: [ :testCase | testCase printString ]) asArray
    sorted
    do: [ :testCaseString | 
      aStream
        cr;
        nextPutAll: testCaseString ].
  aStream
    cr;
    tab;
    nextPutAll: unexpectedErrors size printString , ' errors'.
  (unexpectedErrors collect: [ :testCase | testCase printString ]) asArray
    sorted
    do: [ :testCaseString | 
      aStream
        cr;
        nextPutAll: testCaseString ].
  aStream
    cr;
    tab;
    nextPutAll: unexpectedPasses size printString , ' unexpected passes'