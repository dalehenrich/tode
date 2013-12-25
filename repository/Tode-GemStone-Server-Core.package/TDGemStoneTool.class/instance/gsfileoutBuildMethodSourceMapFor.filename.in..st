as yet unclassified
gsfileoutBuildMethodSourceMapFor: behavior filename: filename in: directory
  | map methodStartToken categoryStartToken |
  categoryStartToken := 'category:'.
  methodStartToken := 'method:'.
  behavior isMeta
    ifTrue: [ methodStartToken := 'classmethod:' ].
  map := Dictionary new.
  directory
    readOnlyFileNamed: filename
    do: [ :fileStream | 
      | line linePosition lastCategoryPosition category |
      linePosition := fileStream position.
      line := fileStream nextLine.
      [ line notNil ]
        whileTrue: [ 
          (line beginsWith: categoryStartToken)
            ifTrue: [ 
              | categoryTokens |
              lastCategoryPosition := linePosition.
              categoryTokens := line findTokens: ':'.
              category := (categoryTokens at: 2) trimBoth ]
            ifFalse: [ 
              (line beginsWith: methodStartToken)
                ifTrue: [ 
                  | methodTokens |
                  methodTokens := line findTokens: ' '.
                  (methodTokens size = 1
                    or: [ (methodTokens at: 2) trimBoth = behavior theNonMetaClass name asString ])
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
                      (map
                        at: behavior name
                        ifAbsent: [ map at: behavior name put: Dictionary new ])
                        at: selector asSymbol
                        put:
                          {begin.
                          end.
                          category.
                          lastCategoryPosition} ]
                        on: Error , SecurityError
                        do: [ :ignored | 
                          (ignored isKindOf: SecurityError)
                            ifFalse: [ 
                              "primitive compilation errors expected"
                              false
                                ifTrue: [ self halt ] ] ] ] ] ].
          linePosition := fileStream position.
          line := fileStream nextLine ] ].
  ^ map