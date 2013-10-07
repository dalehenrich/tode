as yet unclassified
gsfileout: directoryPath externalMethodMap: externalMethodMap classToFilenameMap: classToFilenameMap defaultHeader: defaultHeader
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  externalMethodMap
    keysAndValuesDo: [ :clsName :methodRefs | 
      | filenames cls |
      Transcript
        cr;
        show: '--->' , clsName asString.
      cls := Smalltalk classNamed: clsName.
      filenames := classToFilenameMap
        at: cls theNonMetaClass name
        ifAbsent: [ {(clsName asLowercase , '.gs')} ].
      filenames
        do: [ :filename | 
          (directory fileExists: filename)
            ifFalse: [ ^ self error: 'No .gs file found for: ' , clsName printString ] ].
      (methodRefs asArray sort: [ :a :b | a selector <= b selector ])
        do: [ :methodRef | 
          | beh sourceMap ar done |
          beh := cls.
          methodRef classIsMeta
            ifTrue: [ beh := beh class ].
          done := false.
          1 to: filenames size do: [ :index | 
            | filename lastFile |
            filename := filenames at: index.
            lastFile := index = filenames size.
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
                      ifTrue: [ #'append' ]
                      ifFalse: [ #'notFound' ] ].
                ar ~~ #'notFound'
                  ifTrue: [ 
                    self
                      gsfileout: methodRef
                      filename: filename
                      range: ar
                      in: directory.
                    done := true ] ] ] ] ]