accessing
evaluateTopezScript: topezScript
  | line stream result startingSize originalEvaluating |
  [ 
  startingSize := self scriptActionStack size.
  originalEvaluating := evaluatingScript.
  evaluatingScript := true.
  stream := topezScript readStream.
  [ 
  line := stream nextLine.
  line notEmpty ]
    whileTrue: [ 
      self accumulateScriptText
        ifTrue: [ 
          self
            accumulateText: line
            onEval: [ :res | 
              result := res.
              objIn value: result ] ]
        ifFalse: [ 
          | isolatedCommands |
          isolatedCommands := line findTokens: ';'.
          isolatedCommands
            do: [ :isolatedCommand | 
              | pipedCommands |
              pipedCommands := isolatedCommand findTokens: '|'.
              pipedCommands
                do: [ :pipedCommand | 
                  result := self evaluateTopezScriptCommand: pipedCommand.
                  objIn value: result ] ] ] ].
  evaluatingScript := originalEvaluating	"last one on the stack please turn out the lights" ]
    ifCurtailed: [ 
      | currentSize extra |
      "terminated process ... clean everything up "
      accumulateScriptText := evaluatingScript := false.
      currentSize := self scriptActionStack size.
      extra := currentSize - startingSize.
      extra > 0
        ifTrue: [ self scriptActionStack removeLast: extra ] ].
  ^ result