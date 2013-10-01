as yet unclassified
gsfileout: directoryPath externalMethodMap: externalMethodMap defaultHeader: defaultHeader
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  externalMethodMap
    keysAndValuesDo: [ :clsName :methodRefs | 
      | filename cls |
      Transcript
        cr;
        show: '--->' , clsName asString.
      filename := self gsfileoutGsFileNameFor: clsName.
      (directory fileExists: filename)
        ifFalse: [ ^ self error: 'No .gs file found for: ' , clsName printString ].
      cls := Smalltalk at: clsName.
      methodRefs
        do: [ :methodRef | 
          | beh sourceMap ar gsSource |
          beh := cls.
          methodRef classIsMeta
            ifTrue: [ beh := beh class ].
          gsSource := beh
            fileOutMethod: methodRef selector asSymbol
            environmentId: 0.
          sourceMap := self
            gsfileoutBuildMethodSourceMapFor: beh
            filename: filename
            in: directory.
          ar := sourceMap
            at: methodRef selector asSymbol
            ifAbsent: [ 
              self
                error:
                  'No source entry  found for: ' , clsName printString , '>>' , methodRef selector ].
          self
            gsfileout: methodRef
            filename: filename
            range: ar
            in: directory ] ]