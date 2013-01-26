accessing
evaluateTopezScript: topezScript
  | line stream result |
  stream := topezScript readStream.
  [ 
  line := stream nextLine.
  line notEmpty ]
    whileTrue: [ 
      self accumulateScriptText
        ifTrue: [ 
          "just read lines up until one begins with %"
          self halt ]
        ifFalse: [ 
          | isolatedCommands |
          isolatedCommands := line findTokens: ';'.
          isolatedCommands
            do: [ :isolatedCommand | 
              | pipedCommands |
              pipedCommands := isolatedCommand findTokens: '|'.
              pipedCommands do: [ :pipedCommand | result := self evaluateTopezScriptCommand: pipedCommand ] ] ] ].
  ^ result