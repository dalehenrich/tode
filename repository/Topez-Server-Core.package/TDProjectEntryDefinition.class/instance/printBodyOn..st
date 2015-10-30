printing
printBodyOn: aStream
  self comment isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'comment: ' , self comment printString , ';';
        cr;
        yourself ].
  self printScriptsOn: aStream.
  gitCheckout
    ifNotNil: [ :path | 
      aStream
        space: 4;
        nextPutAll: 'gitCheckout: ' , self gitCheckout printString , ';';
        cr ].
  gitRemoteName
    ifNotNil: [ :path | 
      aStream
        space: 4;
        nextPutAll: 'gitRemoteName: ' , self gitRemoteName printString , ';';
        cr ].
  gitRootPath
    ifNotNil: [ :path | 
      aStream
        space: 4;
        nextPutAll: 'gitRootPath: ' , self gitRootPath printString , ';';
        cr ].
  aStream
    space: 4;
    nextPutAll: 'status: #( '.
  self status do: [ :sym | aStream nextPutAll: sym printString , ' ' ].
  aStream
    nextPutAll: ');';
    cr;
    yourself