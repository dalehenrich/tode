printing
printInstanceCreationOn: aStream
  aStream
    nextPutAll: '^ ' , self class name asString , ' new';
    cr;
    space: 4;
    nextPutAll:
        self projectSpec projectLabel , ': ' , self projectSpec name printString;
    cr;
    yourself.
  self projectSpec isConfigurationOfProjectSpec
    ifTrue: [ 
      aStream
        space: 6;
        nextPutAll: 'version: ' , self projectSpec versionString printString;
        cr;
        yourself ].
  aStream
    space: 6;
    nextPutAll:
        'repository: ' , self projectSpec repositoryDescriptions first printString;
    cr;
    yourself.
  self projectSpec loads
    ifNil: [ 
      aStream
        space: 6;
        nextPutAll: 'loads;';
        cr;
        yourself ]
    ifNotNil: [ :loadCollection | 
      aStream
        space: 6;
        nextPutAll: 'loads: #( '.
      loadCollection
        do: [ :group | aStream nextPutAll: group printString , ' ' ].
      aStream
        nextPutAll: ');';
        cr;
        yourself ]