printing
printOn: aStream
  [ aStream
    nextPutAll: process class name;
    nextPutAll: '(oop=';
    nextPutAll: process asOop printString;
    nextPutAll: ', ';
    nextPutAll: 'status=';
    nextPutAll: process _statusString;
    nextPutAll: ', '.
  aStream
    nextPutAll: 'priority=';
    nextPutAll: process priority printString;
    nextPutAll: ', ' ]
    on: Error
    do: [ :ex | aStream nextPutAll: '...problem printing process' ].
  aStream nextPutAll: ')'.
  ^ aStream contents