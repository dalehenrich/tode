as yet unclassified
gsfileoutBuildMethodSourceMapFor: behavior filename: filename in: directory
  | map methodStartToken |
  methodStartToken := 'method:'.
  behavior isMeta
    ifTrue: [ methodStartToken := 'classmethod:' ].
  map := Dictionary new.
  directory
    readOnlyFileNamed: filename
    do: [ :fileStream | 
      | line |
      line := fileStream nextLine.
      [ line notNil ]
        whileTrue: [ 
          (line beginsWith: methodStartToken)
            ifTrue: [ 
              | begin end chunk selector |
              end := begin := fileStream position.
              chunk := WriteStream on: String new.
              line := fileStream nextLine.
              [ line notNil and: [ (line beginsWith: '%') not ] ]
                whileTrue: [ 
                  chunk nextPutAll: line.
                  end := fileStream position.
                  line := fileStream nextLine ].
              [ 
              selector := Behavior parseSelector: chunk contents for: behavior.
              map
                at: selector asSymbol
                put:
                  {begin.
                  end} ]
                on: Error , SecurityError
                do: [ :ignored | 
                  (ignored isKindOf: SecurityError)
                    ifFalse: [ 
                      "primitive compilation errors expected"
                      self halt ] ] ].
          line := fileStream nextLine ] ].
  ^ map