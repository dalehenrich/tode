as yet unclassified
gsfileout: directoryPath workingCopy: workingCopy filename: filename defaultHeader: defaultHeader
  | directory header |
  directory := ServerFileDirectory on: directoryPath.
  header := self gsfileoutExtractHeaderFor: filename in: directory.
  header isEmpty
    ifTrue: [ header := defaultHeader ].
  directory
    forceNewFileNamed: filename
    do: [ :fileStream | 
      | packageInfo methodRefs |
      header isEmpty
        ifFalse: [ fileStream nextPutAll: header ].
      fileStream
        nextPutAll: '! ------------------- Class definitions ';
        lf.
      packageInfo := MetacelloPlatform current packageInfoFor: workingCopy.
      packageInfo classes do: [ :cls | self gsfileoutClass: cls on: fileStream ].
      fileStream
        nextPutAll: '! ------------------- Class methods ';
        lf.
      packageInfo classes
        do: [ :cls | self gsfileOutMethods: cls on: fileStream ].
      fileStream
        nextPutAll: '! ------------------- Extension Methods ';
        lf.
      methodRefs := packageInfo extensionMethods.
      methodRefs := methodRefs asArray
        sorted: [ :a :b | a classSymbol <= b classSymbol and: [ a selector <= b selector ] ].
      methodRefs
        do: [ :methodRef | 
          | nativeStream |
          nativeStream := WriteStream on: String new.
          methodRef actualClass
            fileOutMethod: methodRef selector
            on: nativeStream.
          fileStream nextPutAll: nativeStream contents encodeAsUTF8intoString ].
      fileStream
        nextPutAll: '! ------------------- Class initializers ';
        lf.
      packageInfo classes
        do: [ :cls | 
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