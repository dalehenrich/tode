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
      ar == #'append'
        ifTrue: [ 
          fileStream nextPutAll: originalSource.
          originalSource last == lf
            ifFalse: [ fileStream nextPut: lf ].
          fileStream
            nextPutAll: 'category: ';
            nextPutAll:
                (methodRef actualClass _categoryOfSelector: methodRef selector) asString
                    printString;
            lf.
          methodRef actualClass
            fileOutMethod: methodRef selector
            environmentId: 0
            on: fileStream ]
        ifFalse: [ 
          | src |
          src := methodRef sourceCode.
          fileStream nextPutAll: (originalSource copyFrom: 1 to: (ar at: 1)).
          fileStream nextPutAll: src.
          src last == lf
            ifFalse: [ fileStream nextPut: lf ].
          fileStream
            nextPutAll:
              (originalSource copyFrom: (ar at: 2) + 1 to: originalSource size) ] ]