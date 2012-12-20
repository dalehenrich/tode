as yet unclassified
printOn: aStream
  aStream
    nextPutAll: process class name;
    nextPutAll: '(oop=';
    nextPutAll: process asOop printString;
    nextPutAll: ', ';
    nextPutAll: 'status=';
    nextPutAll: process _statusString;
    nextPutAll: ', '.
  process clientData ~~ nil
    ifTrue: [ 
      aStream
        nextPutAll: 'clientData=';
        nextPutAll: process clientData printString;
        add: ', ' ].
  aStream
    nextPutAll: 'priority=';
    nextPutAll: process priority printString;
    nextPutAll: ', '.
  process _group ~~ nil
    ifTrue: [ 
      aStream
        nextPutAll: 'group=';
        nextPutAll: process _group printString ].
  aStream
    nextPut: ')';
    cr.
  ^ aStream contents