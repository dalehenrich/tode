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
          self gsfileoutClass: cls on: fileStream ].
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