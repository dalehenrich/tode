evaluator engine
evaluate: aString
  [ 
  | line stream result |
  stream := aString readStream.
  [ 
  line := stream nextLine.
  line ~~ nil ]
    whileTrue: [ 
      self actionStack notEmpty
        ifTrue: [ result := self accumulateText: line ]
        ifFalse: [ 
          self addToHistory: line.
          TDCommandLine
            line: line
            forEachCommand: [ :command | result := self evaluateCommand: command ] ] ].
  ^ result ]
    on: Error , TDRestoreFromBackupComplete
    do: [ :ex | 
      (ex isKindOf: Error)
        ifTrue: [ 
          | errorMessage |
          errorMessage := 'Topez ERROR: ' asText
            ,
              (Text
                string: ex description
                attributes:
                  {(TextColor red).
                  (TextEmphasis bold)}).
          self class debugMode
            ifTrue: [ self halt: errorMessage asString ].
          self resetStack.
          ^ errorMessage ].
      ^ ex description ]