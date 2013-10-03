as yet unclassified
gsfileout: directoryPath classes: classNameList filename: filename defaultHeader: defaultHeader
  | directory header |
  directory := ServerFileDirectory on: directoryPath.
  header := self gsfileoutExtractHeaderFor: filename in: directory.
  header isEmpty
    ifTrue: [ header := defaultHeader ].
  directory
    forceNewFileNamed: filename
    do: [ :fileStream | 
      header isEmpty
        ifFalse: [ fileStream nextPutAll: header ].
      fileStream
        nextPutAll: '! ------------------- Class definitions ';
        lf.
      classNameList
        do: [ :clsName | 
          | cls |
          cls := Smalltalk classNamed: clsName.
          fileStream
            nextPut: Character lf;
            nextPutAll: 'expectvalue %String';
            nextPut: Character lf;
            nextPutAll: 'doit';
            nextPut: Character lf;
            nextPut: $(;
            nextPutAll:
                (cls _definitionInContext: System myUserProfile withConstraints: false);
            nextPutAll: ') definition.';
            nextPut: Character lf;
            nextPut: $%;
            nextPut: Character lf.
          cls comment isEmpty not
            ifTrue: [ 
              fileStream
                lf;
                nextPutAll: 'expectvalue %Boolean';
                lf;
                nextPutAll: '! ------------------- Class comment for ';
                nextPutAll: clsName asString;
                lf;
                nextPutAll: 'doit';
                lf;
                nextPutAll: clsName asString;
                nextPutAll: ' comment: ';
                lf;
                nextPutAll: cls comment printString;
                nextPut: $.;
                lf;
                nextPutAll: 'true';
                lf;
                nextPut: $%;
                lf ] ].
      fileStream
        nextPutAll: '! ------------------- Class methods ';
        lf.
      classNameList
        do: [ :clsName | 
          | cls |
          cls := Smalltalk classNamed: clsName.
          self gsfileOutMethods: cls on: fileStream ].
      fileStream
        nextPutAll: '! ------------------- Class initializers ';
        lf.
      classNameList
        do: [ :clsName | 
          | cls |
          cls := Smalltalk classNamed: clsName.
          (cls class selectors includes: #'initialize')
            ifFalse: [ ^ self ].
          fileStream
            lf;
            nextPutAll: 'expectvalue %Boolean';
            lf;
            nextPutAll: 'doit';
            lf;
            nextPutAll: cls name asString , ' initialize.';
            lf;
            nextPutAll: 'true';
            lf;
            nextPutAll: '%';
            lf ] ]