as yet unclassified
gsfileout: methodRef filename: filename range: ar in: directory
  | originalSource lf |
  lf := Character lf.
  directory
    readOnlyFileNamed: filename
    do: [ :fileStream | originalSource := fileStream contents ].
  directory
    forceNewFileNamed: filename
    do: [ :fileStream | 
      ar == #'append'
        ifTrue: [ 
          fileStream nextPutAll: originalSource.
          originalSource last == lf
            ifFalse: [ fileStream nextPut: lf ].
          methodRef actualClass
            fileOutMethod: methodRef selector
            environmentId: 0
            on: fileStream ]
        ifFalse: [ 
          | src cat fileCat |
          src := methodRef sourceCode withGemstoneLineEndings.
          (fileCat := ar at: 3)
            = (cat := methodRef category asString printString)
            ifTrue: [ fileStream nextPutAll: (originalSource copyFrom: 1 to: (ar at: 1)) ]
            ifFalse: [ 
              fileStream nextPutAll: (originalSource copyFrom: 1 to: (ar at: 4)).
              fileStream
                nextPutAll: 'category: ' , cat;
                nextPut: lf;
                nextPutAll: 'set compile_env: 0';
                nextPut: lf;
                nextPutAll: 'method: ' , methodRef actualClass name asString;
                nextPut: lf ].
          fileStream nextPutAll: src.
          src last == lf
            ifFalse: [ fileStream nextPut: lf ].
          fileStream
            nextPutAll:
              (originalSource copyFrom: (ar at: 2) + 1 to: originalSource size) ] ]