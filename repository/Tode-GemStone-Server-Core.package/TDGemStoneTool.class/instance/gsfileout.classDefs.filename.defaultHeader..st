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
            nextPutAll: 'doit';
            nextPut: Character lf;
            nextPutAll: cls definition;
            nextPut: $%;
            nextPut: Character lf ] ]