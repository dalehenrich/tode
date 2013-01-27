accessing
evaluateTopezScript: topezScript
  | line stream result |
  [ 
  evaluatingScript := true.
  stream := topezScript readStream.
  [ 
  line := stream nextLine.
  line notEmpty ]
    whileTrue: [ 
      self accumulateScriptText
        ifTrue: [ self accumulateText: line ]
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
  ^ result ]
    ensure: [ evaluatingScript := false ]