as yet unclassified
gsfileout: directoryPath classMethods: classNameList filename: filename defaultHeader: defaultHeader
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
          cls fileOutMethodsOn: fileStream ].
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
            nextPutAll: 'doit';
            lf;
            nextPutAll: cls name asString , ' initialize.';
            lf;
            nextPutAll: '%';
            lf ] ]