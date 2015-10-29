printing
printBodyOn: aStream
  self comment isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'comment: ' , self comment printString , ';';
        cr;
        yourself ].
  self installScript isEmpty
    ifFalse: [ 
      aStream
        space: 4;
        nextPutAll: 'installScript: ' , self installScript printString , ';';
        cr;
        yourself ].
  gitCommit
    ifNotNil: [ :path | 
      aStream
        space: 4;
        nextPutAll: 'gitCommit: ' , self gitCommit printString , ';';
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