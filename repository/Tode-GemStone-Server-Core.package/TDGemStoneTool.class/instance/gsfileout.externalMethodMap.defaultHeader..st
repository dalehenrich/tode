as yet unclassified
gsfileout: directoryPath externalMethodMap: externalMethodMap defaultHeader: defaultHeader
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  externalMethodMap
    keysAndValuesDo: [ :clsName :methodRefs | 
      | filenames cls |
      Transcript
        cr;
        show: '--->' , clsName asString.
      filenames := self gsfileoutGsFileNameFor: clsName.
      filenames
        do: [ :filename | 
          (directory fileExists: filename)
            ifFalse: [ ^ self error: 'No .gs file found for: ' , clsName printString ] ].
      cls := Smalltalk at: clsName.
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
                ar := sourceMap
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