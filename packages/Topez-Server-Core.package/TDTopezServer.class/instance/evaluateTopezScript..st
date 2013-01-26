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
        ifTrue: [ result := self accumulateText: line ]
        ifFalse: [ 
          | isolatedCommands |
          isolatedCommands := line findTokens: ';'.
          isolatedCommands
            do: [ :isolatedCommand | 
              | pipedCommands |
              pipedCommands := isolatedCommand findTokens: '|'.
              pipedCommands do: [ :pipedCommand | result := self evaluateTopezScriptCommand: pipedCommand ] ] ] ].
  ^ result ]
    ensure: [ evaluatingScript := false ]