as yet unclassified
gsfileout: methodRef filename: filename range: ar in: directory
  | originalSource lf |
  lf := Character lf.
  directory
    fileNamed: filename
    do: [ :fileStream | originalSource := fileStream contents ].
  directory
    forceNewFileNamed: filename
    do: [ :fileStream | 
      | src |
      fileStream nextPutAll: (originalSource copyFrom: 1 to: (ar at: 1)).
      src := methodRef sourceCode.
      fileStream nextPutAll: src.
      src last == lf
        ifFalse: [ fileStream nextPut: lf ].
      fileStream
        nextPutAll:
          (originalSource copyFrom: (ar at: 2) + 1 to: originalSource size) ]