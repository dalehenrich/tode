as yet unclassified
findRegexSender: regexPattern searchScriptRoot: path
  "find [--scriptPath=<tode-path>] rsender <regex-pattern>"

  | regex rootSearchNode leafNodes |
  path ifNil: [ ^ self findRegexSender: regexPattern ].
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDExecutableStScriptVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      [ 
      | gsMethod res |
      gsMethod := leafNode method.
      res := gsMethod _selectorPool
        detect: [ :sel | regex search: sel asString ]
        ifNone: [ nil ].
      res
        ifNil: [ 
          res := gsMethod literals
            detect: [ :lit | 
              lit isString
                ifTrue: [ regex search: lit asString ]
                ifFalse: [ 
                  (lit isKindOf: Association)
                    ifTrue: [ regex search: lit key asString ]
                    ifFalse: [ false ] ] ]
            ifNone: [ nil ] ].
      res ~~ nil
        ifTrue: [ leafNodes add: leafNode ] ]
        on: self compilerExceptionSet
        do: [ :ex | 
          Transcript
            cr;
            show: 'Compile error processing: ' , leafNode printString ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]