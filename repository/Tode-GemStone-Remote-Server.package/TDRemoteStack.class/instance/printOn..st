as yet unclassified
printOn: aStream
  [ 
  aStream
    nextPutAll: 'Remote GsProcess Reference';
    nextPutAll: '(oop=';
    nextPutAll: processOop printString ]
    on: Error
    do: [ :ex | aStream nextPutAll: '...problem printing process' ].
  aStream nextPut: ')'.
  ^ aStream contents