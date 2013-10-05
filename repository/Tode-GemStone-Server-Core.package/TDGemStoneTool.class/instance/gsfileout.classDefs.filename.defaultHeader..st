as yet unclassified
gsfileout: directoryPath classDefs: classNameList filename: filename defaultHeader: defaultHeader
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
                nextPut: Character lf;
                nextPutAll: 'expectvalue %Boolean';
                nextPut: Character lf;
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
                lf ] ] ]