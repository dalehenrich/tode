as yet unclassified
gsfileout: directoryPath externalMethodMap: externalMethodMap classToFilenameMap: classToFilenameMap defaultHeader: defaultHeader
  externalMethodMap
    keysAndValuesDo: [ :cls :methodRefs | 
      | filePaths clsName |
      clsName := cls name.
      Transcript
        cr;
        show: '--->' , clsName asString.
      filePaths := classToFilenameMap
        at: clsName
        ifAbsent: [ {(clsName asLowercase , '.gs')} ].
      (methodRefs asArray sort: [ :a :b | a selector <= b selector ])
        do: [ :methodRef | 
          | beh sourceMap ar done |
          beh := cls.
          methodRef classIsMeta
            ifTrue: [ beh := beh class ].
          done := false.
          1 to: filePaths size do: [ :index | 
            | filepath lastFile directory |
            filepath := filePaths at: index.
            lastFile := index = filePaths size.
            FileDirectory
              splitName: directoryPath , '/' , filepath
              to: [ :directoryName :filename | 
                directory := ServerFileDirectory on: directoryName.
                done
                  ifFalse: [ 
                    sourceMap := self
                      gsfileoutBuildMethodSourceMapFor: beh
                      filename: filename
                      in: directory.
                    ar := (sourceMap at: beh name ifAbsent: [ Dictionary new ])
                      at: methodRef selector asSymbol
                      ifAbsent: [ 
                        lastFile
                          ifTrue: [ 
                            self halt: 'Needs an append at position marker'.
                            (sourceMap at: beh name ifAbsent: [ Dictionary new ])
                              at:
                                (beh isMeta
                                  ifTrue: [ '  lastInstanceMethod' ]
                                  ifFalse: [ '  lastClassMethod' ])
                              ifAbsent: [ #'append' ] ]
                          ifFalse: [ #'notFound' ] ].
                    ar ~~ #'notFound'
                      ifTrue: [ 
                        self
                          gsfileout: methodRef
                          filename: filename
                          range: ar
                          in: directory.
                        done := true ] ] ] ] ] ]