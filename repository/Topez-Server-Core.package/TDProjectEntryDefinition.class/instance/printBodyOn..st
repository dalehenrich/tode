printing
printBodyOn: aStream
  aStream
    space: 4;
    nextPutAll: 'status: #( '.
  self status do: [ :sym | aStream nextPutAll: sym printString , ' ' ].
  aStream
    nextPutAll: ');';
    cr;
    yourself.
  gitRootPath
    ifNotNil: [ :path | 
      aStream
        space: 4;
        nextPutAll: 'gitRootPath: ' , self gitRootPath printString , ';';
        cr ]